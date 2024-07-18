//
//  MotionAnimationView.swift
//  Africa
//
//  Created by Raj.P, Varun (Cognizant) on 18/07/24.
//

import SwiftUI

struct MotionAnimationView: View {
    var body: some View {
        GeometryReader(content: { geometry in
            ZStack {
                Circle()
                    .fill()
                    .foregroundColor(.gray)
                    .frame(width: 256, height: 256, alignment: .center)
                .position(CGPoint(x: geometry.size.width / 2, y: geometry.size.height / 2))
                
                Text("\(geometry.size)")
            }
        })
    }
}

#Preview {
    MotionAnimationView()
}
