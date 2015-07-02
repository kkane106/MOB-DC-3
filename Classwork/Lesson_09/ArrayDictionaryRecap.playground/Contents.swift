// Arrays

let constantArray = [0,1]
var variableArray = [0,1]
variableArray.append(4)

var shirts = ["black", "flannel", "checkered"]
shirts[0] = "sweater"
shirts

// Dictionaries

var dictionary: [Int: Int ] = [1:1,2:1,3:2]
dictionary[1]
dictionary[2]
dictionary.keys.array
dictionary.values.array

var names: [String: String] = ["Kris": "K", "Handy": "D", "Devin": "C"]
names["Kris"] = "Kane"
names["Kevin"] = "Park"
var x = names.removeValueForKey("Kris")
names["Kris"]
x