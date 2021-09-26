//
//  main.swift
//  dz5
//
//  Created by Vitaliy Korekhov on 26.09.2021.
//

import Foundation


enum Starting: String {
    case on = "on"
    case off = "off"
}
enum Windows: String {
    case open = "open"
    case close = "close"
}
enum Bodywork: String {
    case bodyfulls = "bodyfulls"
    case bodyempty = "bodyempty"
}

protocol Car {
    var brand: String {get}
    var model: String {get}
    var yearOfRelease: Int {get}
    var color: String {get}
    
    var starting: Starting {get set}
    var windows: Windows {get set}
    var bodywork: Bodywork {get set}
}

extension Car {
    mutating func startingOn() {
        starting = .on
        print("Двигатель \(starting.rawValue)")
    }
    mutating func startingOff() {
        starting = .off
        print("Двигатель \(starting.rawValue)")
    }
    mutating  func windowsOpen() {
        windows = .open
        print("Окна \(windows.rawValue)")
    }
    mutating  func windowsClose() {
        windows = .close
        print("Окна \(windows.rawValue)")
    }
    mutating func bodyworkFulls() {
        bodywork = .bodyfulls
        print("Кузов \(bodywork.rawValue)")
    }
    mutating func bodyworkEmpty() {
        bodywork = .bodyempty
        print("Кузов \(bodywork.rawValue)")
    }
}
var autoOne = Auto(brand: "Audi",
                   model: "TT",
                   yearOfRelease: 2017,
                   color: "black",
                   starting: .on,
                   windows: .close,
                   bodywork: .bodyempty)

print(autoOne)

final class Auto: Car {
    var brand: String
    var model: String
    var yearOfRelease: Int
    var color: String
    var starting: Starting
    var windows: Windows
    var bodywork: Bodywork
    
    init(brand: String,
         model: String,
         yearOfRelease: Int,
         color: String,
         starting: Starting,
         windows: Windows,
         bodywork: Bodywork) {
        
        self.brand = brand
        self.model = model
        self.yearOfRelease = yearOfRelease
        self.color = color
        self.starting = starting
        self.windows = windows
        self.bodywork = bodywork
    }
}

var brand: String
var model: String
var yearOfRelease: Int
var color: String

var starting: Starting
var widows: Windows
var bodywork: Bodywork

func printCar() {
    print("""
Автомобиль

Марка автомобиля - \(brand)
Модель Автомобиля - \(model)
Год выпуска - \(yearOfRelease)
Цвет - \(color)

Двигатель - \(starting.rawValue)
Окна - \(windows.rawValue)
Кузов - \(bodywork.rawValue) \n\n

""")
}




