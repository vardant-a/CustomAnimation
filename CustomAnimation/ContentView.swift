//
//  ContentView.swift
//  CustomAnimation
//
//  Created by Алексей on 26.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var progress = 0.4
    @State private var startAnimation: Double = 0
    
    
    var body: some View {
        
        GeometryReader { geometry in
            let size = geometry.size
            
            ZStack {
                CocaCola(progress: progress, teaHeight: 0.03, offset: startAnimation)
                    .fill(Color("TeaColor"))
                    .opacity(0.9)
                    .overlay(content: {
                        ZStack {
                            BubblesView()
                        }
                    })
                    .mask {
                        ZStack {
                            Image(systemName: "cylinder.fill")
                                .resizable()
                                .aspectRatio( contentMode: .fit)
                        }
                    }
                
                Image(systemName: "cylinder")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio( contentMode: .fit)
                    .foregroundColor(Color("GlassСolor"))
            }
            .frame(width: size.width, height: size.height)
            .onAppear {
                withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                    startAnimation = size.width
                }
            }
        }
        .padding()
        .frame(height: 550)
        
        HStack {
            
            Text("0 liter")
            
            Slider(value: $progress, in: 0...0.70)
                .tint(Color("TeaColor"))
            
            Text(" \(String(format:"%.2f", progress)) liter")
        }
        .padding()
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
