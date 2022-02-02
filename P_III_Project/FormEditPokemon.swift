//
//  FormEditPokemon.swift
//  P_III_Project
//
//  Created by Jorge Ramos on 26/01/2022.
//

import SwiftUI

struct FormEditPokemon: View {
    
    @State var poke:Pokemon
    @Binding var pk:[Pokemons]
    
    @State var name: String = ""
    @State var attack = NumbersOnly()
    @State var baseDamage = NumbersOnly()
    @State var defence = NumbersOnly()
    @State var type: String = ""
    @State var health = NumbersOnly()
    
    @State var ShowAlert = false
    
    var body: some View {
        VStack {
            Text("Edit Pokemon").font(.largeTitle).bold()
            NavigationLink("back", destination: ContentView(pk:self.$pk))
            Form {
                    
                        VStack {
                            
                            Text("Editar \(poke.name)")
                            TextField("\(poke.attack)", text: $attack.value)
                                .keyboardType(.decimalPad)
                            TextField("\(poke.baseDamage)", text: $baseDamage.value)
                                .keyboardType(.decimalPad)
                            TextField("\(poke.defence)", text: $defence.value)
                                .keyboardType(.decimalPad)
                            TextField("\(poke.type)", text: $type)
                            TextField("\(poke.health)", text: $health.value)
                                .keyboardType(.decimalPad)
                            Spacer()
                        }
                        .padding()
                        
                    
                    
            }

                        Button("Editar") {
                            var newPokemon:Pokemons = Pokemons(
                                name: poke.name,
                                attack: attack.value.asFloat(),
                                baseDamage: baseDamage.value.asFloat(),
                                defence: defence.value.asFloat(),
                                type: type,
                                health: health.value.asFloat(),
                                image: poke.image)
                            
                            for (index,item) in pk.enumerated() {
                                if(item.name == poke.name){
                                    pk.remove(at: index)
                                    pk.insert(newPokemon, at: index)
                                }
                            }
                            ShowAlert.toggle()
                            
                        }
                        .frame(width: 280, height: 50, alignment: .center)
                        .background(Color.white)
                        .font(.system(size: 20,weight: .bold, design:.default))
                        .cornerRadius(10)
                        .alert(isPresented: $ShowAlert, content: {
                            Alert(title:Text("Editado"))
                        })
                        
        }
        .navigationBarHidden(true)
            }
        }
