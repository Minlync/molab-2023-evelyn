let names = ["evelyn", "jacky", "Lana", "ronglin", "whoever"]

for name in names {
    print("\(name) is a secret agent")
}

for _ in 0...4 {
    print("Hip hip hurray!")
}


//here can print 5 lines because 0 also represent of a completly number

let count = 1...3
for _ in count {
    print("There's no place like home.")
}
//the diffrence of this is because of the value of cont so it includes the numbers from 1 to 3 (inclussive) so the count here present of a sepecitic and accurate number than for_in 0.....4
// so here will exacaly print out 3 lines

for i in 4...6 {
    print("Star Wars: Episode \(i)")
}

//print("Star Wars: Episode \(i)"): Inside the loop, this line prints a string with the value of i interpolated into it. So, it will print lines like:

//"Star Wars: Episode 4"
//"Star Wars: Episode 5"
//"Star Wars: Episode 6"


for i in 1...8 {
    if i < 3 {
        print("\(i) is a small number")
    }
}
//The for-in loop iterates through the range 1...8, which includes the numbers from 1 to 8.

//Inside the loop, there's an if condition: if i < 3 { ... }. This condition checks if the current value of i is less than 3.

//If i is less than 3, it prints a line indicating that the number is small.

