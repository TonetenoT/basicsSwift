//
//  main.swift
//  DZ3
//
//  Created by Vitaliy Korekhov on 15.09.2021.
//

import Foundation

print("Hello, World!")

enum Actions: String {
    case openDors = "двери открыты"
    case closedDors = "двери закрыты"
    case motorIsRunning = "заведен"
    case motorNotRunning = "заглушен"
}

struct Car {
    let name: String
    let model: String
    let color: String
    let km: Int
    let kuzov: String
    let numberOfSeats: Int
    let transmission: String
}

let car1 = Car(name: "toyota", model: "LC", color: "black", km: 300000, kuzov: "SUV", numberOfSeats: 5, transmission: "mechanical")
let car2 = Car(name: "Ford", model: "Explorer", color: "wihte", km: 67000, kuzov: "SUV", numberOfSeats: 7, transmission: "automatic")

let modeCars = Actions.openDors

func modeCar(for action: Actions)  {
    switch action {
    case .openDors:
        print(Actions.openDors.rawValue)
    case .closedDors:
        print(Actions.closedDors.rawValue)
    case .motorIsRunning:
        print(Actions.motorIsRunning.rawValue)
    case .motorNotRunning:
        print(Actions.motorNotRunning.rawValue)
        
        modeCar(for: modeCars)
    }
}
