//
//  CarModelLogic.swift
//  Car Stars
//
//  Created by Bahadır Kılınç on 27.04.2022.
//

import Foundation
import UIKit
let carModelImages = [#imageLiteral(resourceName: "Giulia"), // giulia
                      #imageLiteral(resourceName: "Challenger"), // challenger
                      #imageLiteral(resourceName: "TeslaModelS"), // model s
                      #imageLiteral(resourceName: "RivialRT1"), // rivial
                      #imageLiteral(resourceName: "SubaruWRX"), // wrx
                      #imageLiteral(resourceName: "HondaE"), // honda e
                      #imageLiteral(resourceName: "Tonale"), // tonale
                      #imageLiteral(resourceName: "TeslaRoadster"), // roadster
                      #imageLiteral(resourceName: "LucidAir"), // lucid air
                      #imageLiteral(resourceName: "MazdaRX7"), // mazda rx 8
                      #imageLiteral(resourceName: "Supra"), // supra
                      #imageLiteral(resourceName: "Gtr34")] // r34
struct CarModelLogic {
    

    var carModels = [CarModel(carModelImages[0],"Alfa Romeo Giulia",["BMW 5 Series","Alfa Romeo Giulia","Volkswagen Passat"]),
                     CarModel(carModelImages[1], "Dodge Challanger",["Dodge Challanger", "Chevrolet Camaro", "Dodge Charger"]),
                     CarModel(carModelImages[2], "Tesla Model S",["Tesla Model S", "Tesla Model Y", "Tesla Roadster"]),
                     CarModel(carModelImages[3], "Rivial RT1",["Tesla Cybertruck", "Rivial RT1", "GMC Hummer EV"]),
                     CarModel(carModelImages[4], "Subaru Impreza WRX",["Ford Focus ZX3", "Audi TT", "Subaru Impreza WRX"]),
                     CarModel(carModelImages[5], "Honda E",["Mini Cooper S", "Honda E", "BMW i3"]),
                     CarModel(carModelImages[6], "Alfa Romeo Tonale",["Alfa Romeo Tonale", "Fiat Bravo", "Volkswagen T-Roc"]),
                     CarModel(carModelImages[7], "Tesla Roadster",["Porche 911", "Bugatti Chiron", "Tesla Roadster"]),
                     CarModel(carModelImages[8], "Lucid Air",["Lucid Air", "TOGG Sedan(!)", "Porche Taycan"]),
                     CarModel(carModelImages[9], "Mazda RX-8",["Acura NSX", "Hyundai Tiburon GT", "Mazda RX-8"]),
                     CarModel(carModelImages[10], "Toyota Supra",["Toyota Supra", "Lancer EVO VIII", "Infiniti G35"]),
                     CarModel(carModelImages[11], "Nissan Skyline R34",["BMW 4 M Series", "Toyota Celica GT-S", "Nissan Skyline R34"])]
    var atCar = 0
    var trueChoice = 0
    mutating func checkAnswer(_ userAnswer: String) -> Bool{
        if carModels[atCar].modelName == userAnswer{
            trueChoice += 1
            return true
        }else{
            return false
        }
    }
    mutating func nextCar(){
        if atCar < carModels.count-1{
            atCar += 1
            
        }
    }
    func getImage() -> UIImage{
        return carModels[atCar].carImage
    }
    func getChoice1() -> String{
        return getChoice(0)
    }
    func getChoice2() -> String{
        return getChoice(1)
    }
    func getChoice3() -> String{
        return getChoice(2)
    }
    
    func getChoice(_ choice: Int) -> String{
        return carModels[atCar].choices[choice]
    }

}

