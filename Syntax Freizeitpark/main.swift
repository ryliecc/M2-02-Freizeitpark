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

let attraction1: (name: String, capacity: Int, minHeightInM: Double, minAge: Int, location: String, category: String, price: Double) = ("Donnerfalke", 30, 1.6, 16, "Adventure Land", "Rollercoaster", 3.50)

let attraction2: (name: String, capacity: Int, minHeightInM: Double, minAge: Int, location: String, category: String, price: Double) = ("Odyssey", 8, 1.2, 8, "Greek Islands", "Boat Ride", 4.99)

let attraction3: (name: String, capacity: Int, minHeightInM: Double, minAge: Int, location: String, category: String, price: Double) = ("Scream Tower", 16, 1.6, 14, "Adventure Land", "Drop Tower", 2.75)


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

var guestCounter = 1

while guestCounter <= guestNumber {
    print("Lieber Gast #\(guestCounter), herzlich Willkommen im Syntax Freizeitpark!")
    guestCounter += 1
}

// Aufgabe 2.2 Verlauf des Tages

while guestNumber > 0 {
    print(guestNumber > 1 ? "Es sind \(guestNumber) Gäste da." : "Es ist 1 Gast da.")
    let randomNumber = Int.random(in: 1...3)
    if (randomNumber == 1) {
        guestNumber += 1
    } else {
        guestNumber = max(0, guestNumber - 2)
    }
    // Aufgabe 2.4 Lesbarkeit der Konsolenausgabe
    sleep(1)
}

print("Der Park hat geschlossen.")

// Aufgabe 2.3 Verlauf des Tages (Fortgeschritten)

guestNumber = 19
var salesVolume: Double = 0.00
let attractions = [attraction1, attraction2, attraction3]

while true {
    if (guestNumber % 2 == 0) {
        let randomGuestNumber = min(Int.random(in: 1...3), guestNumber)
        guestNumber -= randomGuestNumber
        print(randomGuestNumber > 1 ? "Es haben \(randomGuestNumber) Gäste den Park verlassen." : "Es hat ein Gast den Park verlassen.")
        
    } else if (guestNumber % 2 == 1 && guestNumber < maxGuestNumber) {
        guestNumber += 1
        print("Es hat ein weiterer Gast den Park betreten.")
    }
    
    if (guestNumber == 0) {
        break
    }
    
    // Aufgabe 2.5 Tagesumsatz
    
    let randomAttraction = attractions.randomElement()!
    let randomAttractionGuestNumber = Int.random(in: 0...min(randomAttraction.capacity, guestNumber))
    salesVolume += randomAttraction.price * Double(randomAttractionGuestNumber)
    
    // Aufgabe 2.4 Lesbarkeit der Konsolenausgabe
    
    sleep(1)
}

print("Es haben alle Gäste den Park verlassen. Der Tagesumsatz beträgt \(salesVolume.formatted(.number.precision(.fractionLength(2))))€.")

// Aufgabe 3.1 Softeisstand

print("Ein Softeis, sehr gerne!")
print("Bitte gib für die folgenden Fragen true ein für Ja und false für Nein.")

print("Soll es eine große Portion sein?")
var isBigPortion: Bool = Bool(readLine()!)!
print(isBigPortion ? "Eine große Eiswaffel wird befüllt." : "Eine kleine Eiswaffel wird befüllt.")

print("Wollen Sie Soße?")
var isWithSauce: Bool = Bool(readLine()!)!
if (isWithSauce) {
    print("Das Eis wird mit Soße beträufelt.")
}

print("Wollen Sie Streusel?")
var isWithSprinkles: Bool = Bool(readLine()!)!
if (isWithSprinkles) {
    print("Das Eis wird mit Streuseln verziert.")
}

print("Das Softeis ist fertig. Guten Appetit!")

// Aufgabe 3.2 Achterbahnfahrten

var waitingGuests: Int = 50

while waitingGuests >= 20 {
    waitingGuests -= 20
    print("Die nächste Fahrt geht los!")
    let randomNumber: Int = Int.random(in: 1...3)
    if randomNumber % 2 == 0 {
        waitingGuests += 30
    } else {
        waitingGuests += 5
    }
}

print("Die letzte Fahrt des Tages startet!")
print("Die Achterbahn ist geschlossen.")
