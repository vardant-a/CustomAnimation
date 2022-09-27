//
//  Models.swift
//  CustomAnimation
//
//  Created by Алексей on 27.09.2022.
//

import Foundation

struct Bubble: Identifiable {
    
    let id = UUID()
    let valueX: Double
    let valueY: Double
    let sizeValue: Double
    let opacity: Double
    
    static func getData() -> [Bubble] {
        let bubbleData: [Bubble] = []
        
        
        
        return bubbleData
    }
}




class DataBubble {
    
    static let shared = DataBubble()
    
    let valueX = [].shuffled()
    let valueY = [].shuffled()
    let sizeValue = [13, 34, 28, 5, 25, 15, 10, 8, 21, 30].shuffled()
    let opacity = [0.25, 0.17, 0.41, 0.11, 0.5, 0.32, 0.2, 0.6, 0.47, 0.52].shuffled()
    
    private init() {}
}
