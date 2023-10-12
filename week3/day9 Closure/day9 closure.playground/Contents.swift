import UIKit

var greeting = "Hello, playground"


func greetUser() {
    print("Hi there!")
}


var greetCopy: () -> Void = greetUser
// the empty parentheses marks a function that accepts no parameters the arrow next to it meants exacly  what it meants you make a function were about to declare return type for the function the void is meant nothing this function returns no value. sometimes you will see this written as open and close parens behind the scenes void open and close parens mean the same thing nothing's coming back

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    }else {
        return "Anonymous"
    }
}



let data: (Int) -> String = getUserData
let user = data(1989)
print(user)

let sayHello = {(name:String) -> String in
    "Hi\(name)!"
}

sayHello ("Taylor")



let team = ["Gloria","Suzanne","Pipper","tiffany","Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

let captainFirstTeam = team.sorted { (name1, name2) -> Bool in
    if name1 == "Suzanne" {
        return true
    } else if name2 == "Suzanne" {
        return false
    }
    
    return name1 < name2
}

// so the name 2 will come before name1
//let captainFirstTeam = team.sorted (by:captainFirstSorted)
//print(captatinFirstTeam)


//func greetUser() {
//    print("Hi there!")
//}
//
//greetUser()
//
//var greetCopy = greetUser
//greetCopy()
//
//// it is a copy


//Test
var Study = { (name: String) in
    print("I'm dying of \(name).")
}
Study("Swift")

var click = { (button: Int) in
    if button >= 0 {
        print("Button \(button) was clicked.")
    } else {
        print("That button doesn't exist.")
    }
}

//var shareWinnings = { (amount: Double) in
//    let half = amount / 2.0
//    print("It's \(half) for me and \(half) for you.")
//}
//shareWinnings("50") wrong one!!!

var shareWinnings = { (amount: Double) in
    let half = amount / 2.0
    print("It's \(half) for me and \(half) for you.")
}

shareWinnings(50.0) // Corrected: Passing a Double value instead of a string

//correct one!!

var pickFruit = { (name: String) in
    switch name {
    case "strawberry", "raspberry":
        print("Strawberries and raspberries are half price!")
    default:
        print("We don't have those.")
    }
}

pickFruit("strawberry")

/*let calculateResult = { (answer) in
    if answer == 42 {
        print("You're correct!")
    } else {
        print("Try again.")
    }
}
*/

let calculateResult: (Int) -> Void = { (answer) in
    if answer == 42 {
        print("You're correct!")
    } else {
        print("Try again.")
    }
}

let watchTV = { (channel: String) in
    print("I'm going to watch some \(channel)")
}
//watch_TV("BBC News") it is wrong because of the underline
watchTV("BBC News")

let makeReservation = { (people: Int) in
    print("I'd like a table for \(people), please.")
}
makeReservation(4)


//var buyMagazine = { (name: String) -> Int in
//    let amount = 10
//    print("\(name) costs \(amount)")
//    return amount
//}
////buyMagazine(name: "Wired")
//let cost = buyMagazine("Wired")

let bakeBirthdayCake = { (name: String) -> Int in
    print("I've made a cake for \(name); here's the bill.")
    return 50
}
let cost = bakeBirthdayCake("John")
// This will print "I've made a cake for John; here's the bill."
// The cost variable will contain the value 50.


//let shovelSnow = { (depth) -> String in
//if depth < 1 {
//    return "OK, I can do this..."
//} else {
//    return "I need some help!"
//}
//}

//This doesn't tell Swift what data type depth will be.
let shovelSnow = { (depth: Int) -> String in
    if depth < 1 {
        return "OK, I can do this..."
    } else {
        return "I need some help!"
    }
}

//let goSurfing = { (waveHeight: Int) -> Int in it is wrong This tells Swift to expect an Int to be returned, but sends back strings.
let goSurfing = { (waveHeight: Int) -> String in

    if waveHeight < 5 {
        return "Let's go!"
    } else if waveHeight < 10 {
        return "This could be tricky"
    } else if waveHeight < 20 {
        return "Only a pro could do that"
    } else {
        return "No way!"
    }
}

let convertNumerals = { (numeral: String) -> String in
    switch numeral {
    case "I":
        return "1"
    case "II":
        return "2"
    case "III":
        return "3"
//        added
    default:
            return "Unknown numeral"
    }
}
print(convertNumerals("II")) /* The switch statement does not cover all possible cases.*/


func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

func doImportantWork(first:()->Void, second:() -> Void, third:() -> Void){
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}
doImportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third:{
    print("This is the third work")
}
