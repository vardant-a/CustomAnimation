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
        var bubbleData: [Bubble] = []
        
        for index in 0..<10 {
            bubbleData.append(Bubble(
                valueX: DataBubble.shared.valuesX[index],
                valueY: DataBubble.shared.valuesY[index],
                sizeValue: DataBubble.shared.sizeValues[index],
                opacity: DataBubble.shared.opacitys[index]
            ))
        }
        return bubbleData
    }
}




class DataBubble {
    
    static let shared = DataBubble()
    
    let valuesX: [Double]  = [105, -105, 47, 61, -38, -120, 50, 90, -41, -21].shuffled()
    let valuesY: [Double] = [-50, -135, -105, -5, -87, -61, -130, -147, -110, -94].shuffled()
    let sizeValues: [Double]  = [13, 34, 28, 5, 25, 15, 10, 8, 21, 30].shuffled()
    let opacitys = [0.25, 0.17, 0.41, 0.11, 0.5, 0.32, 0.2, 0.6, 0.47, 0.52].shuffled()
    
    private init() {}
}
