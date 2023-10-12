



import UIKit

//struct Sport{
//    var name:String
//    
//}

//var tennis = Sport(name:"Tennis")
//print(tennis.name)
//
//tennis.name = "Lawn tennis"


struct Sport {
    var name: String
    var isOlympicSport:Bool
    
    var OlypicStatus:String{
        if isOlympicSport {
            return"\(name) is an Olympic sport"
        } else{
            return "\(name)is not an Olympic sport"
        }
    }
}

let chessBoxing = Sport(name:"Chessboxing",isOlympicSport: false )
print(chessBoxing.OlypicStatus)
