//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var version = 1

version = 3

let confernce = "WWDC"

let message = "Hello \(confernce)"

let language = " Swift"

let introduced = 2014

let isAwesome = true


let dogString = "Dog?!"

dogString.characters.count

// Array and Dictionary

var names = ["Shashi", "Ipsit", "Priyanka"]

var favNumber = ["Shahsi": 12, "Ipsit": 13, "Priyanka": 14]



//LOOPS


for name in names {
    
    print(name)
}

// Iterarte and Modify

for (name, num) in favNumber {
    
    print("\(name) has favouite number \(num)")
}



names.append("Shashikant")

names.append(contentsOf: ["Shashi1", "Shashi2", "Shashi3"])

favNumber["Shashi1"] = 23


// Optional


let age = 12

if age > 12 {
 print(" You can go to school")
}
else {
print("Hello There")
}


// Switch Case 

let scrore = 45


switch scrore {
case 23:
    print(" You have scored 23 runs ")
case 45:
    print("You hae scored 45 runs")
default:
    print("You have scored default")
}

// Functions and Closures 

// Function to send message to someone with different combination

func sendMessage(_ message: String, to recepient: String, shouting: Bool = true) {
    
    var message = "\(message) to \(recepient)"
    
    if shouting {
        
        message = message.uppercased()
        
    }
    
    print(message)
}

sendMessage("Good Morning", to: "Shashi")


func firstString(havingPrefix prefix: String, in strings: [String]) -> String? {
    
    for string in strings {
        
        if string.hasPrefix(prefix) {
            return string
        }
     }
    
    return nil

}

firstString(havingPrefix: "I", in: ["Shashi", "Priyanka", "Ipsit"])


// Filter numbers in an array with specific condition 


func filter<Element>(_ numbers: [Element], _ includeNumber: (Element) -> Bool) -> [Element] {
    
    var result: [Element] = []
    
    for number in numbers {
        
        if includeNumber(number) {
            result.append(number)
        }
        
    }
    
    return result
    
}


let numbers = [2,3,5,7,56]


let evenNumbersClosure = filter(numbers) { $0 % 2 == 0 }
print(evenNumbersClosure)


// Using Map on Array and Hashes

names.map { name in
   print(name.characters.count)
}

favNumber.map { name, number in
  
    print(name)
    print(number)
    
    
}

// Custom Data Types in Swift 

struct Rectangle {
    
    var width: Int
    var height: Int
    var area: Int {
        return width * height
    }
    
    func fitsInside(_ other: Rectangle) -> Bool {
        
        return(width < other.width) && (height < other.height)
    }

}

var rectangle = Rectangle(width: 23, height:24)

rectangle.height
rectangle.width
rectangle.area

let small = Rectangle(width: 1, height: 1)
let large = Rectangle(width:30, height: 30)

small.fitsInside(large)

// Struct with Extension 

struct Exrectangle {
    
    var width: Int
    var height: Int

}

extension Exrectangle {
    
    var area: Int {
        
        return width * height
        
    }
    func fitsInsideExt(_ other: Rectangle) -> Bool {
        
        return(width < other.width) && (height < other.height)
    }
    
}


// Generic Structures

struct NamedArray<Element> {
    var name: String
    var items: [Element]
    
}

let data = NamedArray(name: "Game", items: ["Cricket", "Tennis"])
print(data)

let intData = NamedArray(name: "Score", items: [12,34,23,45])

print(intData)

// Classes 


class Fish {
    
    var name: String
    init(name: String) {
        self.name = name
    }
    func swim() {
        
        print("Hello, I am swimming")
    }


}

class FlyingFish: Fish {
    
    override func swim() {
        print("I am sub class")
    }
    
}

let fish = FlyingFish(name: "Dolphin")

fish.swim()

//Enum 

enum Alignment {

    case left, right

}

let alg = Alignment.left
print(alg)






















































































































































