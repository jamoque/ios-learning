import Cocoa

let playground = "Hello, playground"
var mutablePlayground = "Hello, mutable playground"
mutablePlayground += "!"

for c: Character in mutablePlayground {
//    print("'\(c)'")
}

let oneCoolDude = "\u{1F60E}"
let aAcute = "\u{0061}\u{0301}"

for scalar in playground.unicodeScalars {
    print("\(scalar.value) ")
}

let aAcutePrecomposed = "\u{00E1}"
let b = (aAcute == aAcutePrecomposed) // true
print("aAcute: \(aAcute.count); aAcutePrecomposed: \(aAcutePrecomposed.count)")

let start = playground.startIndex
let fifthIndex = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[fifthIndex] // "o"

let range = start...fifthIndex
let firstFive = playground[range] // "Hello"

let empty = ""
let isEmpty = empty.startIndex == empty.endIndex
empty.isEmpty
