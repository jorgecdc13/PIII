//
//  Home.swift
//  P_III_Project
//
//  Created by Jorge Ramos on 28/01/2022.
//

import SwiftUI

struct Home: View {
    @State var pk: [Pokemons] = PkmList.List
    var body: some View {
        NavigationView{
        VStack {
            Text("Pokemon").font(.largeTitle).bold()
            Image("noImg")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height:140)
                .scaledToFit()
            NavigationLink(destination: ContentView(pk:self.$pk)){
 
                HStack {
                    Text("Play")
                        .frame(width: 280, height: 50, alignment: .center)
                        .background(Color.gray)
                        .font(.system(size: 20,weight: .bold, design:.default))
                        .cornerRadius(10)
                }
            }
        }
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
