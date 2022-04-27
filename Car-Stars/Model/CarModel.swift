//
//  CarModel.swift
//  Car Stars
//
//  Created by Bahadır Kılınç on 27.04.2022.
//

import Foundation
import UIKit

struct CarModel {
    var carImage: UIImage
    var modelName: String
    var choices: [String]
    init(_ carImage: UIImage,_ modelName: String,_ choices: [String]) {
        self.carImage = carImage
        self.modelName = modelName
        self.choices = choices
    }
}
