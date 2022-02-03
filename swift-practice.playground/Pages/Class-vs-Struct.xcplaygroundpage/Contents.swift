import Foundation

/**
 Classes
 - Mutability
 - Reference type
 - Functions
 */

class MusicianClass {
    var name: String
    var age: Int
    var instrument: String
    
    init(name:String, age:Int, instrument:String) {
        self.name = name
        self.age = age
        self.instrument = instrument
    }
    
    func happyBirthday() {
        self.age += 1
    }
}

let classMarcio = MusicianClass(name: "Marcio",
                                age: 27,
                                instrument: "Piano")

// - Class mutability
classMarcio.age = 30
print(classMarcio.age)

// - Reference type
// When we copy an object -> Create a new reference to the same object
let copyOfClass = classMarcio
copyOfClass.age = 33
print(copyOfClass.age)
print(classMarcio.age)

// Functions
print(classMarcio.age)
classMarcio.happyBirthday()
print(classMarcio.age)

/**
 Structs
 - Inmutability / mutability
 - Value type
 - Mutable functions
 */

struct MusicianStruct {
    var name: String
    var age: Int
    var instrument: String
    
    mutating func happyBirthday() {
        self.age += 1
    }
}

var structMarcio = MusicianStruct(name: "Marcio",
                                  age: 27,
                                  instrument: "Piano")

// - Struct inmmutability
// -- We should define them as constats for inmmutability
// -- As we declare as a variable, we're able to change the values
structMarcio.age = 30
print(structMarcio.age)

// Value type
// When we copy an object -> create a new object
var copyOfStruct = structMarcio
print(copyOfStruct.age) // 30
copyOfStruct.age = 33
print(copyOfStruct.age) // 33
print(structMarcio.age) // still 30


// Mutating fuctions
// - As Struct are inmmutables, we must use mutating functions to modify its values.
print(structMarcio.age)
structMarcio.happyBirthday()
print(structMarcio.age)


