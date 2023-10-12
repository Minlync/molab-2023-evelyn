//: Getting a character from a string

import Foundation

// swift must use index to access parts of string

let str = "ABCDEFGH"
print("str", str)
print("str.count", str.count)

// Can't index string directly in Swift
//print(str[0])

print("str startIndex", str[str.startIndex])
print("str offsetBy 3",str[str.index(str.startIndex, offsetBy: 3)])
print("str offsetBy 5",str[str.index(str.startIndex, offsetBy: 5)])

// Unicode is same, dispite longer longer encoding, same string is twice as long in javascript

let ustr = "🐥🐣🐂🐄🐎🐖🐏🐑"
print("ustr", ustr)
print("ustr count", ustr.count)
print("ustr startIndex", ustr[ustr.startIndex])
print("ustr offsetBy 3", ustr[ustr.index(ustr.startIndex, offsetBy: 3)])

//: [Previous](@previous)  [Next](@next)
