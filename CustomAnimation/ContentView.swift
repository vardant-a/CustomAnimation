//
//  ContentView.swift
//  CustomAnimation
//
//  Created by Алексей on 26.09.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Rating()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Rating: View {
    
    @State var value: Double = 0.5
    
    var body: some View {
        
        VStack {
            
            Text("Hello, what is your mood?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.indigo)
                .padding(.top, 20)
            
            Spacer(minLength: 0)
            
            Slider(value: $value)
                .padding()
            
            Spacer(minLength: 0)
        }
        .background(
            (value <= 0.3 ? Color(.red) : (value > 0.3 && value <= 0.7 ? Color(.yellow) : Color(.green)))
            )
        .ignoresSafeArea()
    }
}
