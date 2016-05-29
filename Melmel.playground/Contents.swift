//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var str1=""
var str2 = String()

if str1.isEmpty{
    print("empty")
}

var variablesString = "Horse"
variablesString += " and carriage"


// Working with Charachters

for character in "Dog!".characters {
    print(character)
}

let exclamationMark: Character = "!"

let catCharacters: [Character] = ["C","a","t"]

let catString = String(catCharacters)

// Concatenating Strings and Characters

let string1 = "hello"
let string2 = " there"
var welcome = string1 + string2

// Append a character to a string 


// error : welcome.append("!")
welcome.append(exclamationMark)
print(welcome)


//String interpolation

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier)*2.5)"

// String indices

let greeting = "Guten Tag!"
greeting[greeting.startIndex]

// predecessor() and successor()
greeting[greeting.endIndex.predecessor()]

greeting[greeting.startIndex.successor()]

// advancedBy()

let index = greeting.startIndex.advancedBy(7)

greeting[greeting.startIndex.advancedBy(7)]


//Inserting and Removing 

welcome.insert("!",atIndex: welcome.endIndex)

welcome.insert("!", atIndex:welcome.startIndex.advancedBy(3))

welcome.insertContentsOf("String".characters, at: welcome.endIndex.predecessor())

welcome.removeAtIndex(welcome.startIndex.advancedBy(2))
print(welcome)

let range = welcome.endIndex.advancedBy(-6)..<welcome.endIndex
welcome.removeRange(range)

print(welcome)

// Comparing String

let quotation = "We're a lot alike, you and I."

let sameQuotation = "We're a lot alike, you and I."

if quotation == sameQuotation {
    print("Equal")
}

//prefix and suffix equality

// Play With Date
let RFC3339DateFormatter = NSDateFormatter()
RFC3339DateFormatter.locale = NSLocale(localeIdentifier: "en_US_POSIX")
RFC3339DateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
let string = "2016-04-29T16:16:56+00:00"
let date = RFC3339DateFormatter.dateFromString(string)


let dateFormatter = NSDateFormatter()
dateFormatter.dateStyle = .LongStyle
dateFormatter.stringFromDate(date!)




// File Manager


let documentDirectory = try! NSFileManager().URLForDirectory(.DocumentDirectory, inDomain: .UserDomainMask, appropriateForURL: nil, create: true)
let fileManager = NSFileManager.defaultManager()

let imageLocation = documentDirectory.URLByAppendingPathComponent("posts/\(1111)")
try fileManager.createDirectoryAtURL(imageLocation, withIntermediateDirectories: true, attributes: nil)

imageLocation.absoluteString



// Build JSON String

let jsonObject = ["user":1234,"content":"This is a new comment!"]

if NSJSONSerialization.isValidJSONObject(jsonObject){
    do {
        let rawData = try NSJSONSerialization.dataWithJSONObject(jsonObject, options: .PrettyPrinted)
        print(try NSJSONSerialization.JSONObjectWithData(rawData, options: .AllowFragments) )
    }
}



