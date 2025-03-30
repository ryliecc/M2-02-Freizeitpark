//
//  Features.swift
//  Syntax Freizeitpark
//
//  Created by Rylie Castell on 13.03.25.
//

import Foundation

// Aufgabe 4.1 Code aufräumen

// Aufgabe 1.2 Freizeitpark Status

func checkStatus() -> String {
    if isOpen {
        return "Herzlich willkommen im Syntax Freizeitpark! Du bist der \(guestNumber + 1). Gast!"
    } else {
        return "Der Park ist geschlossen."
    }
}

func checkIfFull() -> String {
    
    if maxGuestNumber == guestNumber {
        return "Der Park ist voll, bitte kommen Sie später wieder."
    } else {
        return "Treten Sie ein!"
    }
}

// Aufgabe 1.4 Einlasskontrolle
// Aufgabe 1.5 Begründung
// Aufgabe 1.6 VIP-Liste

func controlParkEntrance(_ guest: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool)) -> String {
    
    if !isOpen {
        return "Der Gast \(guest.name) darf nicht in den Park, weil der Park noch nicht geöffnet ist."
    }
    
    if guest.isVip {
        guestNumber += 1
        return "Der Gast \(guest.name) ist ein VIP und darf in den Park."
    }
    
    if maxGuestNumber <= guestNumber {
        return "Der Gast \(guest.name) darf nicht in den Park, weil der Park bereits voll ist."
    }
    
    if guest.age < 12 && maxGuestNumber > guestNumber && !guest.isVip {
        return "Der Gast \(guest.name) ist erst \(guest.age) Jahre alt und darf deswegen nicht in den Park."
    }
    
        guestNumber += 1
        return "Der Gast \(guest.name) ist \(guest.age) Jahre alt und darf in den Park."
}
    
func controlDonnerfalkeEntrace(_ guest: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool)) -> String {
    
    if (guest.age >= 16 && guest.heightInM >= 1.6) {
        return "Der Gast \(guest.name) ist \(guest.age) Jahre alt und \(guest.heightInM.formatted(.number.precision(.fractionLength(2))))m groß und darf auf den Donnerfalken."
    } else if (guest.age < 16 && guest.heightInM >= 1.6) {
        return "Der Gast \(guest.name) darf nicht auf den Donnerfalken, weil er erst \(guest.age) Jahre alt ist."
    } else if (guest.age >= 16 && guest.heightInM < 1.6) {
        return "Der Gast \(guest.name) darf nicht auf den Donnerfalken, weil er nur \(guest.heightInM.formatted(.number.precision(.fractionLength(2))))m groß ist."
    } else {
        return "Der Gast \(guest.name) darf nicht auf den Donnerfalken, weil er mit \(guest.age) Jahren und \(guest.heightInM.formatted(.number.precision(.fractionLength(2))))m weder die Mindestanforderungen für das Alter noch für die Körpergröße erfüllt."
    }
}

// Aufgabe 2.1 Gäste begrüßen

var guestCounter = 1

func greetGuests() {
    while guestCounter <= guestNumber {
        print("Lieber Gast #\(guestCounter), herzlich Willkommen im Syntax Freizeitpark!")
        guestCounter += 1
    }
}

// Aufgabe 2.2 Verlauf des Tages

func checkSimpleDayProgress() {
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
}

// Aufgabe 2.3 Verlauf des Tages (Fortgeschritten)

var salesVolume: Double = 0.00
let attractions = [attraction1, attraction2, attraction3]

func checkAdvancedDayProgress() {
    
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
}

// Aufgabe 3.1 Softeisstand inkl. Aufgabe 3.6

func makeIceCream() {
    print("Ein Softeis, sehr gerne!")
    print("Bitte gib für die folgenden Fragen true ein für Ja und false für Nein.")

    print("Soll es eine große Portion sein?")
    let isBigPortion: Bool = Bool(readLine()!)!
    print(isBigPortion ? "Eine große Eiswaffel wird befüllt." : "Eine kleine Eiswaffel wird befüllt.")

    print("Wollen Sie Soße?")
    let isWithSauce: Bool = Bool(readLine()!)!
    if (isWithSauce) {
        print("Das Eis wird mit Soße beträufelt.")
    }

    print("Wollen Sie Streusel?")
    let isWithSprinkles: Bool = Bool(readLine()!)!
    if (isWithSprinkles) {
        print("Das Eis wird mit Streuseln verziert.")
    }

    print("Das Softeis ist fertig. Guten Appetit!")
}

// Aufgabe 3.2 Achterbahnfahrten

var waitingGuests: Int = 50

func handleRollercoasterRandomly() {
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
}

// Aufgabe 3.5 Eingabe statt Zufall bei Achterbahnfahrten

func handleRollercoasterManually() {
    print("Wieviele Gäste warten aktuell für die Achterbahn?")
    waitingGuests = Int(readLine()!)!

    while waitingGuests >= 20 {
        print("Wieviele Gäste haben die Warteschlange verlassen?")
        let leavingGuests: Int = Int(readLine()!)!
        waitingGuests -= leavingGuests
        print("Die nächste Fahrt geht los!")
        print("Wieviele Gäste haben sich neu angestellt?")
        let newGuests: Int = Int(readLine()!)!
        waitingGuests += newGuests
        
    }

    print("Die letzte Fahrt des Tages startet!")
    print("Die Achterbahn ist geschlossen.")

}

// Aufgabe 4.2 Rechner für das Personal

func addPrices(price1: Double, price2: Double) -> Double {
    return price1 + price2
}
