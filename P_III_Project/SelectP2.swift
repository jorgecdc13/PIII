//
//  SelectP2.swift
//  P_III_Project
//
//  Created by Jorge Ramos on 29/01/2022.
//

import SwiftUI

struct SelectP2: View {
    @Binding var selectedName:String
    @Binding var pk:[Pokemons]
    var body: some View {
        VStack{
            List(pk, id: \.id){ item in
                    if(item.name != selectedName){
                        HStack{
                            VStack{
                                Image(item.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 120, height:140)
                                    .scaledToFit()
                                    .padding(.leading, 30)
                            
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
                }
            .navigationTitle("Select P2")
            }
        }
    }

