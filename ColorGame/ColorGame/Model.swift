import UIKit

class ColorModel {
    func generateColor() -> ColorObject {
        let alpha: CGFloat = 1
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        let color = UIColor(displayP3Red: red/255, green: green/255, blue: blue/255, alpha: alpha)
        return ColorObject(color: color, red: red, green: green, blue: blue)
    }
    func getDominantColor(object: ColorObject) -> ColorType{
        var dominantColor : ColorType
        let red = object.red
        let blue = object.blue
        let green = object.green
        
        if red > green && red > blue {
            dominantColor = .red
        } else if green > red && green > blue {
            dominantColor = .green
        } else {
            dominantColor = .blue
        }
        return dominantColor
    }
}

