//
//  HurryAppView.swift
//  Hurry
//
//  Created by Bruno Sabadini on 21/03/22.
//

import SwiftUI

struct HurryAppView: View {
    
    @Environment(\.presentationMode) var presentation
    
    @State var taps: Int = 0
    
    @State var winner: String?
    
    @State var blue: CGFloat = 100
    
    @State var red: CGFloat = 100
    
    var player1: String
    var player2: String
    
    var end: Bool {
        blue <= 2 || red <= 2
    }
    
    var body: some View {
        ZStack {
            NavigationLink("Finished!", isActive: Binding<Bool>.init(get: {
                end
            }, set: { _ in
                
            })) {
                ScoreView(winner: blue <= 2 ? player1 : player2)
            }
            .hidden()
        GeometryReader { g in
            VStack(spacing:0) {
                Button {
                    red+=2
                    blue = max(blue-2,2)
                } label: {
                    Text("")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .frame(height: g.size.height/2.0*(red/100.0))
                        .background(Color.red)
                }
                
                
                Button {
                    blue+=2
                    red = max(red-2, 2)
                } label: {
                    Text("")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .frame(height: g.size.height/2.0*(blue/100.0))
                        .background(Color.blue)
                    
                }
            }
            .frame(maxHeight:.infinity)
            .navigationBarHidden(true)
        }
    }
        
        
//        .alert(isPresented: end, content: {
//            Alert(title: Text("\(winner ?? "") wins"), dismissButton: .cancel(Text("Ok"), action: {
//                presentation.wrappedValue.dismiss()
//            }))
//        })
    }
}

struct HurryAppView_Previews: PreviewProvider {
    static var previews: some View {
        HurryAppView(player1: "A", player2: "B")
    }
}
