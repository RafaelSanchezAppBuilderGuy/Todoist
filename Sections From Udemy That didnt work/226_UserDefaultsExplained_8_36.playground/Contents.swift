import UIKit


//creating a new UserDefaults called defaults
let defaults = UserDefaults.standard


//if you type defauts.set ; you'll get a list of options of the types of values that you can store in the user defaults


//a scenario that you might find yourself using userdefaults for is saving user preferences inside of your app


//for example if you had an app where you allowed the user to set the music volume
defaults.set(0.24, forKey: "Volume")

//and that means that at a later date you can say
let volume = defaults.float(forKey: "Volume")
//then you can use that persisted data for volume to always set your apps volume to  0.24, which is what the user prefers


//more examples
defaults.set(true, forKey: "MusicOn")
defaults.set("Angela", forKey: "PlayerName")
//idk why, but for this one we used type any? and i didnt see a type string, so I just thought I should mention that

// you can also track user behavior like
defaults.set(Date(), forKey: "AppLastOpenedByUser")  // this one was also a data type of any?

//when opening a default value of datatype any?, you'll use defaults.object(forKey: String)

let appLastOpen = defaults.object(forKey: "AppLastOpenedByUser")


//You can also save collections
let array = [1, 2, 3]
defaults.set(array, forKey: "myArray") // I used value type any?
var myArray = defaults.array(forKey: "myArray") //btw, this actually pulls out an optional array [any]? so it doesnt really know what its unwrapping even though it will (and usually work)
myArray = defaults.array(forKey: "myArray") as! [Int]  //but it may be good practice to downcast as an array of ;integers as! [Int]; since we actually do know what value type is in there


//same for dictionaries
let dictionary = ["name" : "Angela"]
defaults.set(dictionary, forKey: "myDictionary")
let myDictionary = defaults.dictionary(forKey: "myDictionary")




//***** Its always a good idea if you're gonna be using a string over and over to just turn it into a constant that way you can use the autocomplete function which is faster and safer,
//***** Example: above you could've created a constant ;let appOpenedKey = "AppLastOpenedByUser"; that way whenever you'd need to use that string you'd just use the newly created constant instead
