//
//  main.swift
//  dz4
//
//  Created by Vitaliy Korekhov on 24.09.2021.
//

import Foundation

print("Hello, World!")

enum Actions: String {
    case openDors = "двери открыты"
    case closedDors = "двери закрыты"
    case motorIsRunning = "заведен"
    case motorNotRunning = "заглушен"
}

enum Windows: String {
    case open = "open"
    case close = "close"
}

enum Bodywork: String {
    case bodyfulls
    case bodyempty
    case trunkVolume
}

class Car {
    let name: String
    let model: String
    let color: String
    let km: Int
    let kuzov: String
    let numberOfSeats: Int
    let transmission: String
    
    init(name: String,
         model: String,
         color: String,
         km: Int,
         kuzov: String,
         numberOfSeats: Int,
         transmission: String) {
        self.name = name
        self.model = model
        self.color = color
        self.km = km
        self.kuzov = kuzov
        self.numberOfSeats = numberOfSeats
        self.transmission = transmission
        
    }
}

let car1 = Car(name: "toyota", model: "LC", color: "black", km: 300000, kuzov: "SUV", numberOfSeats: 5, transmission: "mechanical")
let car2 = Car(name: "Ford", model: "Explorer", color: "wihte", km: 67000, kuzov: "SUV", numberOfSeats: 7, transmission: "automatic")

let modeCars = Actions.openDors

func modeCar(for action: Actions)  {
    switch action {
    case.openDors:
        print(Actions.openDors.rawValue)
    case.closedDors:
        print(Actions.closedDors.rawValue)
    case.motorIsRunning:
        print(Actions.motorIsRunning.rawValue)
    case.motorNotRunning:
        print(Actions.motorNotRunning.rawValue)
    }
}


