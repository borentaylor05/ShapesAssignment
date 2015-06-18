//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

class Shape: UIView {
    var color:UIColor
    init(color:UIColor){
        self.color = color
        super.init(frame: CGRectZero)
        self.backgroundColor = color
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getArea() -> Double {
        return 0
    }
}

class Square:Shape {
    var width:Int
    init(width:Int, color:UIColor){
        self.width = width
        super.init(color: color)
        self.frame.size = CGSize(width: width, height: width)
    }
    override func getArea() -> Double {
        return Double(width*width)
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class Circle:Shape {
    var radius:Int
    init(radius:Int, color:UIColor){
        self.radius = radius
        super.init(color: color)
        self.frame.size = CGSize(width: 2*radius, height: 2*radius)
        self.layer.cornerRadius = CGFloat(radius)
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func getArea() -> Double {
        return M_PI * (Double(radius*radius))
    }
}
class Rectangle:Shape {
    var width:Int
    var height:Int
    init(width:Int, height:Int, color:UIColor){
        self.width = width
        self.height = height
        super.init(color: color)
        super.frame.size = CGSize(width: width, height: height)
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
class RoundedRectangle:Rectangle {
    var cornerRadius:Int
    init(cornerRadius:Int, width:Int, height:Int, color:UIColor){
        self.cornerRadius = cornerRadius
        super.init(width: width, height: height, color: color)
        self.frame.size = CGSize(width: width, height: height)
        self.layer.cornerRadius = CGFloat(cornerRadius)
    }
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


var circle = Circle(radius: 50, color: UIColor.blueColor())
var square = Square(width: 100, color: UIColor.redColor())
var rectangle = Rectangle(width: 70, height: 90, color: UIColor.greenColor())
var rr = RoundedRectangle(cornerRadius: 5, width: 50, height: 40, color: UIColor.purpleColor())

circle.center = CGPoint(x: 100, y: 100)
square.center = CGPoint(x: 200, y: 200)
rectangle.center = CGPoint(x: 50, y: 50)
rr.center = CGPoint(x: 35, y: 45)

let view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
XCPShowView("Shapes!", view)

view.addSubview(circle)
view.addSubview(square)
square.addSubview(rectangle)
rectangle.addSubview(rr)













