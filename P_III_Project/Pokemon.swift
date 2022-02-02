//
//  Pokemon.swift
//  P_III_Project
//
//  Created by Jorge Ramos on 29/01/2022.
//

import Foundation

class Pokemon: Identifiable {
    let id = UUID()
    let name: String
    let attack: Float
    let baseDamage: Float
    let defence: Float
    let type : String
    let health: Float
    let image : String
    
    init(name:String,attack:Float,baseDamage:Float,defence:Float,type:String,health:Float,image:String? ) {
        self.name = name
        self.attack = attack
        self.baseDamage = baseDamage
        self.defence = defence
        self.type = type
        self.health = health
        self.image = image ?? "noImg"
    }
}
