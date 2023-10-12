import UIKit

// Define the size of the flag (in this case, the proportions of the Chinese flag)
let flagWidth: CGFloat = 200
let flagHeight: CGFloat = 100

// Create a UIGraphicsImageRenderer
let renderer = UIGraphicsImageRenderer(size: CGSize(width: flagWidth, height: flagHeight))

// Generate the Chinese flag
let chineseFlag = renderer.image { context in
    
    // Set the background color to red
    UIColor.red.setFill()
    context.fill(CGRect(x: 0, y: 0, width: flagWidth, height: flagHeight))
    
    // Define the sizes and positions for the stars
    let largeStarSize = CGSize(width: 40, height: 40)
    let smallStarSize = CGSize(width: 20, height: 20)
    let starSpacing: CGFloat = 10
    
    // Set the fill color to yellow for the stars
    UIColor.yellow.setFill()
    
    // Draw the large star (centered on the flag)
    let largeStarRect = CGRect(
        x: (flagWidth - largeStarSize.width) / 2,
        y: (flagHeight - largeStarSize.height) / 2,
        width: largeStarSize.width,
        height: largeStarSize.height
    )
    context.fill(largeStarRect)
    
    // Draw the four small stars in the upper hoist-side corner
    for i in 0..<4 {
        let x = CGFloat(i) * (smallStarSize.width + starSpacing)
        let smallStarRect = CGRect(
            x: x,
            y: 0,
            width: smallStarSize.width,
            height: smallStarSize.height
        )
        context.fill(smallStarRect)
    }
}

// Display the generated Chinese flag
chineseFlag

