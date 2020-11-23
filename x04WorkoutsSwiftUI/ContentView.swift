//
//  ContentView.swift
//  x04WorkoutsSwiftUI
//
//  Created by Kevin Paul on 11/23/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("AS")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 350, alignment: .center)
            
            Spacer().frame(height: 20.0)
            
            Button("Stop!") {}
                .frame(width: 250, height: 50, alignment: .center)
                .foregroundColor(.white)
                .background(Color.red)
                .cornerRadius(8.0)
            
            Spacer().frame(height: 20.0)
            
            HStack {
                Button("Restart") {}
                    .frame(width: 115, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8.0)
                
                Spacer().frame(width: 20)
                
                Button("Rules") {}
                    .frame(width: 115, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(8.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
