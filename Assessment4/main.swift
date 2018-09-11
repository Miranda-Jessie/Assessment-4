//
//  main.swift
//  Assessment4
//
//  Created by Ryan Brashear on 9/10/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation

//1. Create a class called School. Give it properties to model:
// -the name of the school
// -the number of students that attend
// -if it is a public or private school
// -the year it was built
//
// Add a function called schoolDescription to the School class that will print out "\(name of school) was founded in \(the year it was built) and has \(number of students) currently in attendance"

// Create an instance of school and then call it's schoolDescription function

class School {
    let nameOfSchool: String
    var numberOfStudents: Int
    let typeOfSchool: String
    let yearItWasBuilt: Int
    
    init(nameOfSchool: String, numberOfStudents: Int, typeOfSchool: String, yearItWasBuilt: Int) {
        self.nameOfSchool = nameOfSchool
        self.numberOfStudents = numberOfStudents
        self.typeOfSchool = typeOfSchool
        self.yearItWasBuilt = yearItWasBuilt
    }
    func schoolDescription(){
        print("\(nameOfSchool) was founded in \(yearItWasBuilt) and has \(numberOfStudents) currently in attendance.")
    }
}

let schoolBuiling = School(nameOfSchool: "Barren County", numberOfStudents: 1000, typeOfSchool: "Public", yearItWasBuilt: 1974)

//2. Create a HighSchool class that inherits from our base school class. Add a property that will represent a rival highschool. Additionally, add a property that will represent the school mascot.
//
// Add a function called pepRally that will print "\(school name) is the best! \(rival school name) is awful!"
//
// Override the schoolDescription function to make it print "\(school name) is the best in the state since \(the year it was built)! Go \(school mascot)'s!!!"
//
// Create an instance of a highschool and call both the schoolDescription and the pepRally functions.

class HighSchool: School {
    let rivalHighSchool: String
    let schoolMascot: String
    
    init(nameOfSchool: String, numberOfStudents: Int, typeOfSchool: String, yearItWasBuilt: Int, rivalHighSchool: String, schoolMascot: String) {
        self.rivalHighSchool = rivalHighSchool
        self.schoolMascot = schoolMascot
        super.init(nameOfSchool: "Barren County", numberOfStudents: 1000, typeOfSchool: "Public", yearItWasBuilt: 1974)
    }
    func pepRally(){
        print("\(nameOfSchool) is the best! \(rivalHighSchool) is awful!")
    }
    override func schoolDescription() {
        print("\(nameOfSchool) is the best in the state since \(yearItWasBuilt)! Go \(schoolMascot)'s!!!")
    }
}
let schoolMascot = "Trojan"

//3.Create a new class called MagicalHighSchool (think Hogwarts from Harry Potter) that inherits from our HighSchool class. Add new properties for the size of the castle in square feet and the number of secret passages it contains.
//
// Override the pepRally function to make it print "\(school name) is the most magical school on earth! It's castle is (\castle size) square feet, and it has \(number of secret passages) secret passageways! Hurray!"
//
// Create a new function called quidditchMatch that will print "Time for the big quidditch game!"
//
// Create an instance of a magical highschool. Then call all 3 of the functions that it contains/inherits.

class MagicalHighSchool: HighSchool {
    var sizeOfTheCastle: Int
    let numberOfSecretPassages: Int
    
     init(nameOfSchool: String, numberOfStudents: Int, typeOfSchool: String, yearItWasBuilt: Int, rivalHighSchool: String, schoolMascot: String, sizeOfTheCastle: Int, numberOfSecretPassages: Int) {
        self.sizeOfTheCastle = sizeOfTheCastle
        self.numberOfSecretPassages = numberOfSecretPassages
        super.init(nameOfSchool: "Barren County", numberOfStudents: 1000, typeOfSchool: "Public", yearItWasBuilt: 1974, rivalHighSchool: "Glasow", schoolMascot: "Trojans")
    }
    override func pepRally() {
        print("\(nameOfSchool) is the most magiacl school on earth! It's castle is \(sizeOfTheCastle) square feet, and it has \(numberOfSecretPassages) secret passageways! Hurry!")
    }
    func quidditchMatch() {
        print("Time for the big quidditch Match!")
    }
}


//BONUS: Create a new Date() object that represents the current date. Create a date formatter and set the custom date format for it. Use the date formatter to create a formatted String from the date object, and print the formatted String.

