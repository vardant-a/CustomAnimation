//
//  BubblesView.swift
//  CustomAnimation
//
//  Created by Алексей on 27.09.2022.
//

import SwiftUI

struct BubblesView: View {
    private let bubbleData = Bubble.getData()
    var body: some View {
        VStack {
            ForEach(bubbleData) { dateElement in
                BubbleView(
                    valueX: dateElement.valueX,
                    valueY: dateElement.valueY,
                    sizeValue: dateElement.sizeValue,
                    opacityBubble: dateElement.opacity
                )
            }
        }
    }
}

struct BubbleView: View {
    
    let valueX: Double
    let valueY: Double
    let sizeValue: Double
    let opacityBubble: Double
    
    var body: some View {
        Circle()
            .fill(Color.systemColor.opacity(opacityBubble))
        .frame(width: sizeValue, height: sizeValue)
        .offset(x: valueX, y: valueY)
    }
}

struct Bubbles_Previews: PreviewProvider {
    static var previews: some View {
        BubblesView()
    }
}
