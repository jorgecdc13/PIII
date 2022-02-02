//
//  SelectPokemon.swift
//  P_III_Project
//
//  Created by Jorge Ramos on 29/01/2022.
//

import SwiftUI

struct SelectPokemon: View {
    @Binding var pk:[Pokemons]
    
    @State var selectedName:String = ""
    
    var showscreen = true
    var body: some View {
        VStack {
            List(pk, id: \.id){ item in
                HStack{
                    VStack{
                        NavigationLink(destination:SelectP2(selectedName: self.$selectedName, pk: self.$pk)){
                            Image(item.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 120, height:140)
                                .scaledToFit()
                                .padding(.leading, 30)
                                .onTapGesture {
                                    selectedName = item.name
                            }

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
            .navigationTitle("Select P1")
        }
    }
}

