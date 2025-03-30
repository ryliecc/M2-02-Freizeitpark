//
//  main.swift
//  Syntax Freizeitpark


import Foundation

// Aufgabe 1.3 Besucherdaten und Attraktionsdaten

let guest1: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool) = ("Miley Cyrus", 32, 1.65, "Mashed Potatoes", "Rollercoaster", false)

let guest2: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool) = ("Laverne Cox", 15, 1.8, "Beyond Sausage", "Drop Tower", false)

let guest3: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool) = ("Tiny Tim", 9, 1.1, "Cotton Candy", "Carousel", true)

let guest4: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool) = ("Jada Pinkett Smith", 53, 1.52, "Fruit Bowl", "Boat Ride", false)

var newGuest: (name: String, age: Int, heightInM: Double, favoriteFood: String, favoriteAttraction: String, isVip: Bool) = ("", 0, 0, "", "", false)

let attraction1: (name: String, capacity: Int, minHeightInM: Double, minAge: Int, location: String, category: String, price: Double) = ("Donnerfalke", 30, 1.6, 16, "Adventure Land", "Rollercoaster", 3.50)

let attraction2: (name: String, capacity: Int, minHeightInM: Double, minAge: Int, location: String, category: String, price: Double) = ("Odyssey", 8, 1.2, 8, "Greek Islands", "Boat Ride", 4.99)

let attraction3: (name: String, capacity: Int, minHeightInM: Double, minAge: Int, location: String, category: String, price: Double) = ("Scream Tower", 16, 1.6, 14, "Adventure Land", "Drop Tower", 2.75)


// Aufgabe 2.1 Gäste begrüßen

greetGuests()

// Aufgabe 2.2 Verlauf des Tages

checkSimpleDayProgress()


// Aufgabe 3.2 Achterbahnfahrten

handleRollercoasterRandomly()



// Aufgabe 4.3 Einen Tag im Freizeitpark simulieren.


print("----------------------------------------------------------------")
print("----------------------------------------------------------------")
print("----------------------------------------------------------------")
print("Du stehst am Eingang eines Freizeitparkes. Ein Mitarbeiter spricht dich an:")
sleep(1)
print(checkStatus())
print(checkIfFull())
sleep(1)
print("Du betrittst den Eingangsbereich, wo ein weiterer Mitarbeiter die Gäste kontrolliert, die vor dir stehen.")
sleep(1)
print(controlParkEntrance(guest1))
sleep(1)
print(controlParkEntrance(guest2))
sleep(1)
print(controlParkEntrance(guest3))
sleep(1)
print(controlParkEntrance(guest4))
sleep(1)
print("Schließlich bist du an der Reihe. Der Mitarbeiter sieht dich prüfend an.")
sleep(1)
print("Wie heißt du?")
newGuest.name = readLine()!
print("Wie alt bist du?")
newGuest.age = Int(readLine()!)!
print("Stehst du auf der VIP-Liste? Gib true ein für ja und false für nein.")
newGuest.isVip = Bool(readLine()!)!
print("Es wird nun geprüft, ob du eingelassen wirst.")
print(controlParkEntrance(newGuest))
sleep(1)
print("Genau wie die vier Gäste vor dir in der Schlange willst du als erstes die berühmte Donnerfalken Achterbahn ausprobieren. Auch hier kontrolliert wieder ein Mitarbeiter, ob die Gäste groß genug und alt genug sind.")
sleep(1)
print(controlDonnerfalkeEntrace(guest1))
sleep(1)
print(controlDonnerfalkeEntrace(guest2))
sleep(1)
print(controlDonnerfalkeEntrace(guest3))
sleep(1)
print(controlDonnerfalkeEntrace(guest4))
sleep(1)
print("Als nächstes kontrolliert der Mitarbeiter deine Größe.")
print("Wie groß bist du in Metern? Verwende die amerikanische Schreibweise, zum Beispiel 1.78, wenn du 1,78m groß bist.")
newGuest.heightInM = Double(readLine()!)!
print(controlDonnerfalkeEntrace(newGuest))
sleep(1)
print("Am Ausgang steht ein Softeisstand. Du trittst an den Verkäufer heran und bestellst ein Vanille Eis.")
sleep(1)
makeIceCream()
sleep(1)
print("Der Mitarbeiter rechnet kurz.")
sleep(1)
print("Die Fahrt auf dem Donnerfalken kostet \(attraction1.price)€ und das Eis 2.50€, insgesamt wären das also \(addPrices(price1: attraction1.price, price2: 2.50))€.")
sleep(1)
print("Damit hast du nicht gerechnet. Anscheinend muss man hier für jede Attraktion extra bezahlen. Du zahlst, nimmst dein Eis und beobachtest von einer Parkbank aus die Schlangen vor dem Donnerfalken.")
handleRollercoasterManually()
sleep(1)
print("Nachdem die Achterbahn schließt beobachtest du den Einlass.")
checkAdvancedDayProgress()
print("Huch, und schon ist der Tag vorbei. Hoffentlich hattest du viel Spaß im Syntax Freizeitpark. Bis zum nächsten Mal!")
