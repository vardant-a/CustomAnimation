//
//  CocaColaView.swift
//  CustomAnimation
//
//  Created by Алексей on 27.09.2022.
//

import SwiftUI

struct CocaCola: Shape {
    
    var progress: CGFloat
    var teaHeight: CGFloat
    
    var offset: CGFloat
    
    var animatableData: CGFloat {
        get { offset }
        set { offset = newValue }
    }
    
    func path(in rect: CGRect) -> Path {
        
        return Path { path in
            
            path.move(to: .zero)
            
            let progressHeight: CGFloat = (1 - progress) * rect.height
            let height = teaHeight * rect.height
            
            for value in stride(from: 0, to: rect.width, by: 2) {
                
                let x: CGFloat = value
                let sine: CGFloat = sin(Angle(degrees: value + offset).radians)
                let y: CGFloat = progressHeight + (height * sine)
                
                path.addLine(to: CGPoint(x: x, y: y))
                
            }
            path.addLine(to: CGPoint(x: rect.width, y: rect.height))
            path.addLine(to: CGPoint(x: 0, y: rect.height))
        }
    }
}
