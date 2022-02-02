//
//  ContentView.swift
//  P_III_Project
//
//  Created by Jorge Ramos on 28/11/2021.
//

import SwiftUI

struct ContentView: View {
    @Binding var pk: [Pokemons]
    var body: some View {
            ZStack {
                VStack {
                    List(pk, id: \.id){ item in
                        HStack{
                            VStack{
                                NavigationLink(destination:FormEditPokemon(poke: Pokemon(name: item.name, attack: item.attack, baseDamage: item.baseDamage, defence: item.defence, type: item.type, health: item.health,image:item.image), pk: self.$pk)){
                                    Image(item.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 120, height:140)
                                        .scaledToFit()
                                        .padding(.leading, 30)

                                }
                                
                                
                            }
                            VStack{
                                Text("Name: \(item.name)")
                                Text("Attack:\(Int(floor(item.attack)))")
                                Text("Defence: \(Int(floor(item.defence)))")
                                Text("Type: \(item.type)")
                                Text("Health: \(Int(floor(item.health)))")
                            }
                        }
                        
                    }
                    .navigationTitle("Select to edit")
                    
                    Spacer()
                    
                    Button(action: {
                    }) {
                        NavigationLink(destination: SelectPokemon(pk: self.$pk, selectedName: "")) {
                        Text("Battle")
                            .frame(width: 280, height: 50, alignment: .center)
                            .background(Color.white)
                            .font(.system(size: 20,weight: .bold, design:.default))
                            .cornerRadius(10)
                        
                        }
                    }
                    Spacer()
                    Button(action: {
                    }) {
                        NavigationLink(destination: FormAddPokemon(pk:self.$pk)) {
                        Text("Add Pokemon")
                            .frame(width: 280, height: 50, alignment: .center)
                            .background(Color.white)
                            .font(.system(size: 20,weight: .bold, design:.default))
                            .cornerRadius(10)
                        
                        }
                    }
                    NavigationLink(destination: DeletePokemon(pk:self.$pk)) {
                        Text("Delete Pokemon")
                            .frame(width: 280, height: 50, alignment: .center)
                            .background(Color.white)
                            .font(.system(size: 20,weight: .bold, design:.default))
                            .cornerRadius(10)
                        
                        }
                    
                }
                
        }
            
        }
        }




