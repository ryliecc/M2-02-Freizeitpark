//
//  main.swift
//  Syntax Freizeitpark


import Foundation

// Aufgabe 1.2 Freizeitpark Status


if (isOpen) {
    print("Herzlich willkommen im Syntax Freizeitpark! Du bist der \(guestNumber + 1). Gast!")
}

if (maxGuestNumber == guestNumber) {
    print("Der Park ist voll, bitte kommen Sie später wieder.")
} else {
    print("Treten Sie ein!")
}


// Aufgabe 1.3 Besucherdaten und Attraktionsdaten

let guest1: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String) = ("Miley Cyrus", 32, 1.65, "Mashed Potatoes", "Rollercoaster")

let guest2: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String) = ("Laverne Cox", 15, 1.8, "Beyond Sausage", "Drop Tower")

let guest3: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String) = ("Tiny Tim", 9, 1.1, "Cotton Candy", "Carousel")

let guest4: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String) = ("Jada Pinkett Smith", 53, 1.52, "Fruit Bowl", "Boat Ride")

let attraction1: (name: String, capacity: Int, minHeightInM: Double, minAge: Int, location: String, category: String) = ("Donnerfalke", 30, 1.6, 16, "Adventure Land", "Rollercoaster")

let attraction2: (name: String, capacity: Int, minHeightInM: Double, minAge: Int, location: String, category: String) = ("Odyssey", 8, 1.2, 8, "Greek Islands", "Boat Ride")

let attraction3: (name: String, capacity: Int, minHeightInM: Double, minAge: Int, location: String, category: String) = ("Scream Tower", 16, 1.6, 14, "Adventure Land", "Drop Tower")


// Aufgabe 1.4 Einlasskontrolle
// Aufgabe 1.5 Begründung

func controlParkEntrance(_ guest: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String)) {
    
    if (!isOpen) {
        print("Der Gast \(guest.name) darf nicht in den Park, weil der Park noch nicht geöffnet ist.")
    } else if (guest.age >= 12 && maxGuestNumber > guestNumber) {
        print("Der Gast \(guest.name) ist \(guest.age) Jahre alt und darf in den Park.")
        guestNumber += 1
    } else if (guest.age < 12 && maxGuestNumber > guestNumber) {
        print("Der Gast \(guest.name) ist erst \(guest.age) Jahre alt und darf deswegen nicht in den Park.")
    } else if (maxGuestNumber <= guestNumber) {
        print("Der Gast \(guest.name) darf nicht in den Park, weil der Park bereits voll ist.")
    }
    
}

controlParkEntrance(guest1)
controlParkEntrance(guest3)
controlParkEntrance(guest2)
controlParkEntrance(guest4)

func controlDonnerfalkeEntrace(_ guest: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String)) {
    
    if (guest.age >= 16 && guest.heightInM >= 1.6) {
        print("Der Gast \(guest.name) ist \(guest.age) Jahre alt und \(guest.heightInM.formatted(.number.precision(.fractionLength(2))))m groß und darf auf den Donnerfalken.")
    } else if (guest.age < 16 && guest.heightInM >= 1.6) {
        print("Der Gast \(guest.name) darf nicht auf den Donnerfalken, weil er erst \(guest.age) Jahre alt ist.")
    } else if (guest.age >= 16 && guest.heightInM < 1.6) {
        print("Der Gast \(guest.name) darf nicht auf den Donnerfalken, weil er nur \(guest.heightInM.formatted(.number.precision(.fractionLength(2))))m groß ist.")
    } else {
        print("Der Gast \(guest.name) darf nicht auf den Donnerfalken, weil er mit \(guest.age) Jahren und \(guest.heightInM.formatted(.number.precision(.fractionLength(2))))m weder die Mindestanforderungen für das Alter noch für die Körpergröße erfüllt.")
    }
}

controlDonnerfalkeEntrace(guest1)
controlDonnerfalkeEntrace(guest2)
controlDonnerfalkeEntrace(guest3)
controlDonnerfalkeEntrace(guest4)
