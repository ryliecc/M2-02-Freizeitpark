//
//  main.swift
//  Syntax Freizeitpark


import Foundation

// Aufgabe 1.2 Freizeitpark Status

print(checkStatus())
print(checkIfFull())


// Aufgabe 1.3 Besucherdaten und Attraktionsdaten

var guest1: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool) = ("Miley Cyrus", 32, 1.65, "Mashed Potatoes", "Rollercoaster", false)

let guest2: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool) = ("Laverne Cox", 15, 1.8, "Beyond Sausage", "Drop Tower", false)

let guest3: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool) = ("Tiny Tim", 9, 1.1, "Cotton Candy", "Carousel", false)

let guest4: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool) = ("Jada Pinkett Smith", 53, 1.52, "Fruit Bowl", "Boat Ride", false)

let attraction1: (name: String, capacity: Int, minHeightInM: Double, minAge: Int, location: String, category: String, price: Double) = ("Donnerfalke", 30, 1.6, 16, "Adventure Land", "Rollercoaster", 3.50)

let attraction2: (name: String, capacity: Int, minHeightInM: Double, minAge: Int, location: String, category: String, price: Double) = ("Odyssey", 8, 1.2, 8, "Greek Islands", "Boat Ride", 4.99)

let attraction3: (name: String, capacity: Int, minHeightInM: Double, minAge: Int, location: String, category: String, price: Double) = ("Scream Tower", 16, 1.6, 14, "Adventure Land", "Drop Tower", 2.75)


// Aufgabe 1.4 Einlasskontrolle
// Aufgabe 1.5 Begründung
// Aufgabe 1.6 VIP-Liste

print(controlParkEntrance(guest1))
print(controlParkEntrance(guest3))
print(controlParkEntrance(guest2))
print(controlParkEntrance(guest4))

print(controlDonnerfalkeEntrace(guest1))
print(controlDonnerfalkeEntrace(guest2))
print(controlDonnerfalkeEntrace(guest3))
print(controlDonnerfalkeEntrace(guest4))

// Aufgabe 1.6 VIP-Liste Daten eingeben

print("Bitte gib deinen Namen ein.")
guest1.name = readLine()!
print("Bitte gib dein Alter in Jahren ein.")
guest1.age = Int(readLine()!)!
print("Bitte gib true ein, falls du ein VIP bist und false, wenn du keiner bist.")
guest1.isVip = Bool(readLine()!)!
print("Es wird nun geprüft, ob du eingelassen wirst.")
print(controlParkEntrance(guest1))

// Aufgabe 2.1 Gäste begrüßen

greetGuests()

// Aufgabe 2.2 Verlauf des Tages

checkSimpleDayProgress()

// Aufgabe 2.3 Verlauf des Tages (Fortgeschritten)

guestNumber = 19

checkAdvancedDayProgress()

// Aufgabe 3.1 Softeisstand
// anscheinend unwissentlich bereits auch schon 3.6 mitgelöst :)

makeIceCream()

// Aufgabe 3.2 Achterbahnfahrten

handleRollercoasterRandomly()

// Aufgabe 3.5 Eingabe statt Zufall bei Achterbahnfahrten

handleRollercoasterManually()

// Aufgabe 4.2 Rechner für das Personal

print("Die Gesamtsumme zu bezahlen beträgt \(addPrices(price1: 3.79, price2: 2.49))€.")
