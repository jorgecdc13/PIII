//
//  Attack.swift
//  P_III_Project
//
//  Created by Jorge Ramos on 05/12/2021.
//

import Foundation


var player1 = Character(name: "Pikachu", attack: 32, baseDamage: 33, defense: 22, type: "elec",health: 300,image:"nada")
var player2 = Character(name: "Charmander", attack: 44, baseDamage: 28, defense: 24, type: "fire", health: 240,image:"nada")

//Calculates demage
func AttackP1() -> Int {
    let crit = Float.random(in: 1...2)
    let randomness = Float.random(in: 0.85 ... 1)
    let demage:Float = ((((player1.attack / player2.defense) * player1.baseDamage) * crit) * randomness)
    
    return Int(demage)
   
}

func AttackP2() -> Int {
    let crit = Float.random(in: 1...2)
    let randomness = Float.random(in: 0.85 ... 1)
    let demage:Float = ((((player2.attack / player1.defense) * player2.baseDamage) * crit) * randomness)
    
    return Int(demage)
   
}

//Subtracts Chars Life
func Strike(charDemage:Int,charHealth:Int) -> Int {
    
    var ResultHealth = charDemage - charHealth
    
    return ResultHealth
}

var currHealth = Strike(charDemage:0,charHealth:0)

//Checks char life
func checkLife() -> Bool{
    
    var isDead = true
    
    if currHealth > 0 {
        isDead = false
        return isDead
    }else{
        isDead = true
        return isDead
    }
}
