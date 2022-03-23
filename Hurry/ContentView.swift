//
//  ContentView.swift
//  Hurry
//
//  Created by Bruno Sabadini on 13/03/22.
//nn

import SwiftUI

struct ContentView: View {
    
    //Criando as variáveis que servirão como nome dos jogadores
    @State var player1: String = ""
    @State var player2: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Player Red:")
                    Spacer()
                }
                TextField("Player Red", text: $player1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
                HStack {
                    Text("Player Blue:")
                    Spacer()
                }
                
                TextField("Player Blue", text: $player2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Spacer()
                
                
                
                NavigationLink(destination:
                                HurryAppView(player1: player1,
                                             player2: player2)
                ) {
                    VStack(spacing:36) {
                        Text("Click as fast you can on your side of the screen")
                        .foregroundColor(.red)
                        Text("GO!")
                            .font(.largeTitle)
                            .foregroundColor(.red)
                    }
                }
                Spacer()
                Spacer()
                Spacer()
            }
            .padding(48)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
