let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)


let scores = [1, 8, 4, 3, 0, 5, 2]
var count = 0

for score in scores {
    if score == 0 {
        break
    }

    count += 1
}

print("You had \(count) scores before you got 0.")

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]


//
//var isAlive = false
//
//while isAlive == true {
//    print("I'm alive!")
//}
//
//print("I've snuffed it!")


func printTimesTables(for number: Int, end: Int) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

//printTimesTables(for: 5, end: 20)
//
//var characters = ["Lana", "Pam", "Ray", "Sterling"]
//print(characters.count)
//characters.removeAll()
//print(characters.count)

// test for default parameters

func packLunchbox(number: Int, healthy: Bool = true) {
    for _ in 0..<number {
        if healthy {
            print("I'm packing a healthy lunchbox.")
        } else {
            print("Pizza for everyone!")
        }
    }
}




func brushTeeth(useFloss: Bool = true) {
    if useFloss {
        print("Flossing first.")
    }
    print("Brushing my teeth.")
}

//useFloss: This is a parameter of type Bool and has a default value of true. It allows you to specify whether you want to include flossing as part of brushing your teeth. If you call the function without providing an argument for useFloss, it will default to true, indicating that flossing is included. You can also explicitly pass false as an argument if you don't want to include flossing.


outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}


func runRace(distance: Int = 10) {
    if distance < 5 {
        print("This should be easy!")
    } else if distance < 10 {
        print("This should be a nice challenge.")
    } else {
        print("Let's do this!")
    }
}
//In this function:

/*distance is the parameter name.
Int specifies the data type of the parameter, indicating that distance is expected to be an integer (whole number).*/


/*func playGolf(holes: String = 18) {
print("Let's play \(holes) holes of golf.")
}
playGolf() */

// this is wrong because it use the string to hold an interger
//should fix in Int instead of String
//so the correct one is

func playGolf(holes: Int = 18) {
    print("Let's play \(holes) holes of golf.")
}


func parkCar(_ type: String, automatically: Bool = true) {
    if automatically {
        print("Nice - my \(type) parked itself!")
    } else {
        print("I guess I'll have to do it.")
    }
}
parkCar("Tesla") /* here is a placehold to replace with my \(type)*/

/*The provided code defines a Swift function called parkCar with two parameters:
 
 _ type: String: This parameter is labeled as _, which means it doesn't have an external label. It takes a String argument and represents the type of the car.

 automatically: Bool = true: This parameter has an external label automatically and a default value of true. It takes a Bool argument and indicates whether the car is parked automatically.*/
