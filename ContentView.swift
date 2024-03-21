//
//  ContentView.swift
//  bouncycat
//
//  Created by Mushik, Victoria on 3/18/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animateImage = true
    @State private var scale = 0
    var body: some View {
        VStack {
            Spacer()
            Image("kitty")
                .resizable()
                .scaledToFit()
                //.scaleEffect(scale)
                .onTapGesture{
                    scale = scale + Int(0.1)
                }
                .animation(.spring(response: 0.3, dampingFraction: 0.3), value: scale)
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
