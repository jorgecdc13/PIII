//
//  Player.swift
//  P_III_Project
//
//  Created by Jorge Ramos on 05/12/2021.
//

import Foundation
import UIKit

class Character: Identifiable{
    
    var id = UUID()
    
    var name : String
    var attack : Float
    var baseDamage : Float
    var defense : Float
    var type : String
    var health : Int
    var image: String
    
    init(name: String, attack: Float, baseDamage: Float,defense: Float, type: String, health: Int, image:String){
        self.name = name
        self.attack = attack
        self.baseDamage = baseDamage
        self.defense = defense
        self.type = type
        self.health = health
        self.image = image
    }
}
