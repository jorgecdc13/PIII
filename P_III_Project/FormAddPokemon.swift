//
//  FormAddPokemon.swift
//  P_III_Project
//
//  Created by Jorge Ramos on 11/01/2022.
//

import SwiftUI

class NumbersOnly: ObservableObject {
    @Published var value = "" {
        didSet {
            let filtered = value.filter { $0.isNumber }
            
            if value != filtered {
                value = filtered
            }
        }
    }
}

class FormModel: ObservableObject{

}

struct FormAddPokemon: View {
    @Binding var pk: [Pokemons]
    
    @State var name: String = ""
    @State var attack = NumbersOnly()
    @State var baseDamage = NumbersOnly()
    @State var defence = NumbersOnly()
    @State var type: String = ""
    @State var health = NumbersOnly()
    @State var image: String = "noImg"
    
    @State var ShowAlert = false
    
    var body: some View {
        HStack {
                VStack {
                    Text("Add Pokemon").font(.largeTitle).bold()
                    NavigationLink("Save", destination: ContentView(pk:self.$pk))
                    Form {
                        TextField("Name", text: $name)
                        TextField("Attack", text: $attack.value)
                            .keyboardType(.decimalPad)
                        TextField("Base Demage", text: $baseDamage.value)
                            .keyboardType(.decimalPad)
                        TextField("Defence", text: $defence.value)
                            .keyboardType(.decimalPad)
                        TextField("Type", text: $type)
                        TextField("Health", text: $health.value)
                            .keyboardType(.decimalPad)
                        TextField("image", text: $image)
                        
                        
                    }
                    Button("Adicionar"){
                        var newPokemon:Pokemons = Pokemons(
                            name: name,
                            attack: attack.value.asFloat(),
                            baseDamage: baseDamage.value.asFloat(),
                            defence: defence.value.asFloat(),
                            type: type,
                            health: health.value.asFloat(),
                            image: image)
                        pk.append(newPokemon)
                        ShowAlert.toggle()
                    
                    }
                    .frame(width: 280, height: 50, alignment: .center)
                    .background(Color.white)
                    .font(.system(size: 20,weight: .bold, design:.default))
                    .cornerRadius(10)
                    .alert(isPresented: $ShowAlert, content: {
                        Alert(title:Text("Adicionado"))
                    
                    })
                        

                }}
            .navigationBarHidden(true)
    }}


extension String{
    
    func asFloat () -> Float{
        Float(self) ?? 0.0
    }
}

