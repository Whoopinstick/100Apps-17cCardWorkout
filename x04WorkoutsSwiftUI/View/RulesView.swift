//
//  RulesView.swift
//  x04WorkoutsSwiftUI
//
//  Created by Kevin Paul on 11/23/20.
//

import SwiftUI

struct RulesView: View {
    var body: some View {
        VStack(alignment: .center) {
            Text("Rules")
                .font(.title)
                .fontWeight(.bold)
            
            Spacer().frame(height: 20)
            
            Text("The value of each card represents the number of excercise you do.")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Spacer().frame(height: 20)
            
            Text("J = 11, Q = 12, K = 13, A = 14\n\n♠️ = Push-ups\n\n❤️ = Pull-ups\n\n♣️ = Burpees\n\n♦️ = Jumping Jacks")
        }
    }
}

struct RulesView_Previews: PreviewProvider {
    static var previews: some View {
        RulesView()
    }
}
