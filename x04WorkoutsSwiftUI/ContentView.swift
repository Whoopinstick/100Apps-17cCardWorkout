//
//  ContentView.swift
//  x04WorkoutsSwiftUI
//
//  Created by Kevin Paul on 11/23/20.
//

import SwiftUI

struct ContentView: View {
    let cards: [String] = Deck.allCards
    @State private var cardImage = "AS"
    @State private var isShowingRulesSheet = false
    @State private var timer: Timer?
        
    var body: some View {
        VStack {
            Image(cardImage)
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 350, alignment: .center)
            
            Spacer().frame(height: 20.0)
            
            Button("Stop!") {
                stopTimer()
            }
                .frame(width: 250, height: 50, alignment: .center)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(8.0)
            
            Spacer().frame(height: 20.0)
            
            HStack {
                Button("Restart") {
                    stopTimer()
                    startTimer()
                }
                    .frame(width: 115, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8.0)
                
                Spacer().frame(width: 20)
                
                Button("Rules") {
                    isShowingRulesSheet.toggle()
                }
                    .frame(width: 115, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(8.0)
            }
        }
        
        .sheet(isPresented: $isShowingRulesSheet, content: {
            RulesView()
        })
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { _ in
            self.cardImage = cards.randomElement() ?? "AS"
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
