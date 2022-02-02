//
//  Pokemons.swift
//  P_III_Project
//
//  Created by Jorge Ramos on 11/01/2022.
//

import SwiftUI

struct Pokemons : Identifiable {
    let id = UUID()
    let name: String
    let attack: Float
    let baseDamage: Float
    let defence: Float
    let type : String
    let health: Float
    let image : String

}

struct PkmList {
    var name: String
    @Binding var attack: Float
    @Binding var baseDamage: Float
    @Binding var defence: Float
    @Binding var type: String
    @Binding var health: Float
    @Binding var image: String
    
    static var List = [
        Pokemons(name:"Pikachu", attack: 33, baseDamage: 30, defence: 30, type:"Elec", health: 300, image: "pikachu_2"),
        Pokemons(name:"Charmander", attack: 35, baseDamage: 40, defence: 25, type:"Fire", health: 280, image: "charmander_2"),
    ]
}


