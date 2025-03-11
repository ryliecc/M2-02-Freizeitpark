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

var guest1: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool) = ("Miley Cyrus", 32, 1.65, "Mashed Potatoes", "Rollercoaster", false)

let guest2: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool) = ("Laverne Cox", 15, 1.8, "Beyond Sausage", "Drop Tower", false)

let guest3: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool) = ("Tiny Tim", 9, 1.1, "Cotton Candy", "Carousel", false)

let guest4: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool) = ("Jada Pinkett Smith", 53, 1.52, "Fruit Bowl", "Boat Ride", false)

let attraction1: (name: String, capacity: Int, minHeightInM: Double, minAge: Int, location: String, category: String) = ("Donnerfalke", 30, 1.6, 16, "Adventure Land", "Rollercoaster")

let attraction2: (name: String, capacity: Int, minHeightInM: Double, minAge: Int, location: String, category: String) = ("Odyssey", 8, 1.2, 8, "Greek Islands", "Boat Ride")

let attraction3: (name: String, capacity: Int, minHeightInM: Double, minAge: Int, location: String, category: String) = ("Scream Tower", 16, 1.6, 14, "Adventure Land", "Drop Tower")


// Aufgabe 1.4 Einlasskontrolle
// Aufgabe 1.5 Begründung
// Aufgabe 1.6 VIP-Liste

func controlParkEntrance(_ guest: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool)) {
    
    if (!isOpen) {
        print("Der Gast \(guest.name) darf nicht in den Park, weil der Park noch nicht geöffnet ist.")
    } else if (guest.age >= 12 && maxGuestNumber > guestNumber && !guest.isVip) {
        print("Der Gast \(guest.name) ist \(guest.age) Jahre alt und darf in den Park.")
        guestNumber += 1
    } else if (guest.age < 12 && maxGuestNumber > guestNumber && !guest.isVip) {
        print("Der Gast \(guest.name) ist erst \(guest.age) Jahre alt und darf deswegen nicht in den Park.")
    } else if (maxGuestNumber <= guestNumber && !guest.isVip) {
        print("Der Gast \(guest.name) darf nicht in den Park, weil der Park bereits voll ist.")
    } else if (guest.isVip) {
        print("Der Gast \(guest.name) ist ein VIP und darf in den Park.")
        guestNumber += 1
    }
    
}

controlParkEntrance(guest1)
controlParkEntrance(guest3)
controlParkEntrance(guest2)
controlParkEntrance(guest4)

func controlDonnerfalkeEntrace(_ guest: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool)) {
    
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

// Aufgabe 1.6 VIP-Liste Daten eingeben

print("Bitte gib deinen Namen ein.")
guest1.name = readLine()!
print("Bitte gib dein Alter in Jahren ein.")
guest1.age = Int(readLine()!)!
print("Bitte gib true ein, falls du ein VIP bist und false, wenn du keiner bist.")
guest1.isVip = Bool(readLine()!)!
print("Es wird nun geprüft, ob du eingelassen wirst.")
controlParkEntrance(guest1)

// Aufgabe 2.1 Gäste begrüßen

var guests = guestNumber
var guestCounter = 0

while guests > 0 {
    guestCounter += 1
    print("Lieber Gast #\(guestCounter), herzlich Willkommen im Syntax Freizeitpark!")
    guests -= 1
}

