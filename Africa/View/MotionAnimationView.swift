//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Raj.P, Varun (Cognizant) on 18/07/24.
//

import SwiftUI

struct MotionAnimationView: View {
    
    private var randomCircle = Int.random(in: 10...16)
    @State private var isAnimating = false
    
    func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }
    
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }
    
    var body: some View {
        GeometryReader(content: { geometry in
            ZStack {
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .fill()
                        .foregroundColor(.gray)
                        .frame(width: randomSize(), height: randomSize(), alignment: .center)
                        .opacity(0.2)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                    .position(CGPoint(x: randomCoordinate(max: geometry.size.width), y: randomCoordinate(max: geometry.size.height)))
                    .animation(
                        Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                            .delay(1)
                            .speed(2)
                            .repeatForever()
                    )
                    .onAppear {
                        isAnimating = true
                    }
                }
            }
            .drawingGroup()
        })
    }
}

#Preview {
    MotionAnimationView()
}
