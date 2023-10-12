// drawing colored shapes using UIGraphicsImageRenderer
// https://developer.apple.com/documentation/uikit/uigraphicsimagerenderer

import UIKit

let sz = CGSize(width: 450, height: 300)
let renderer = UIGraphicsImageRenderer(size: sz)

let name = "Italy"

let image = renderer.image { context in
    
    UIColor(hex: 0x008C45).setFill()  // Green: 008C45
       context.fill(CGRect(x: 0, y: 0, width: 150, height: 300))
       
       UIColor(hex: 0xF4F9FF).setFill()  // White: F4F9FF
       context.fill(CGRect(x: 150, y: 0, width: 150, height: 300))
       
       UIColor(hex: 0xCD212A).setFill()  // Red: CD212A
       context.fill(CGRect(x: 300, y: 0, width: 150, height: 300))

    UIColor.darkGray.setStroke()
    context.stroke(renderer.format.bounds)
    
    var box = renderer.format.bounds
    for _ in 4...4 {
        box = box.insetBy(dx: 4, dy: 4)
        context.stroke(box)
    }
    // UIColor(red: 158/255, green: 215/255, blue: 245/255, alpha: 1).setFill()
}

extension UIColor {
    convenience init(hex: Int, alpha: CGFloat = 1.0) {
        self.init(
            red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(hex & 0x0000FF) / 255.0,
            alpha: alpha
        )
    }
}


let message = "Hello,\(name)!"
print(message)





image

