
import Foundation

// MARK: - Tuple

let constantTuple = (1,3)
print(constantTuple.0)

// In order to change its values, we must declare the tuple as a variable
var variableTuple = (1,3,5)
print(variableTuple.2)
variableTuple.2 = 10
print(variableTuple.2)

var myTuple = (10,[10,20,30])
print(myTuple.1[1])

// Pre-definded tuples
let predefinedTuple: (String, String)
predefinedTuple.0 = "Marcio"
predefinedTuple.1 = "Jonas"
print(predefinedTuple)

let predefinedTuple2 = (name: "Marcio", developer: true)
print(predefinedTuple2.name, predefinedTuple2.developer)
