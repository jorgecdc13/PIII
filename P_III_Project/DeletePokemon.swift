//
//  DeletePokemon.swift
//  P_III_Project
//
//  Created by Jorge Ramos on 29/01/2022.
//

import SwiftUI

struct DeletePokemon: View {
    @Binding var pk: [Pokemons]
    var body: some View {
        VStack {
            Text("Swipe to Delete").font(.largeTitle).bold()
            NavigationLink("Save", destination: ContentView(pk:self.$pk))
            List{
                ForEach(pk,id:\.id){ item in
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
                            Text("Attack:\(Int(floor(item.baseDamage)))")
                            Text("Defence: \(Int(floor(item.defence)))")
                            Text("Type: \(item.type)")
                            Text("Health: \(Int(floor(item.health)))")
                            }
                        }
                    }
                    .onDelete(perform: delete)
            }
            .navigationBarHidden(true)
        }
        }
        

func delete(indexSet: IndexSet){
        pk.remove(atOffsets: indexSet)
}
}
