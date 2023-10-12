import UIKit

func imageFor(_ str: String) -> UIImage {
    let url = URL(string: str)
    let imgData = try? Data(contentsOf: url!)
    let uiImage = UIImage(data: imgData!)
    return uiImage!
}

//here is image

let u1 =
    "https://publish.purewow.net/wp-content/uploads/sites/2/2019/06/best-small-dogs-for-kids-bichon-frise.jpg?fit=680%2C860"
let ui1 = imageFor(u1)

//image 2

let u2 =
    "https://images.pexels.com/photos/1805164/pexels-photo-1805164.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"
let ui2 = imageFor(u2)

let sz = CGSize(width: 1024, height: 1024)
let renderer = UIGraphicsImageRenderer(size: sz)

let image = renderer.image { (context) in
    ui1.draw(in: CGRect(x:0, y:0,width: 512, height: 1024))
    ui2.draw(in: CGRect(x:512, y:0,width: 512, height: 1024))
    
}

image

