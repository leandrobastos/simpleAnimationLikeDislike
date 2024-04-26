//
//  CheckmarkAnimationView.swift
//  simpleAnimationLikeDislike
//
//  Created by Leandro Bastos on 19/04/22.
//

import SwiftUI

struct CheckmarkAnimationView: View {
    @State private var isAnimating = false
    var body: some View {
        ZStack {
            Circle()
                .trim(to: isAnimating ? 1 : 0)
                .stroke(.green, lineWidth: 3)
                .frame(width: 100, height: 100)
                .animation(.easeOut(duration: 1), value: isAnimating)

            Image(systemName: "checkmark")
                .foregroundColor(.green)
                .font(.largeTitle)
                .scaleEffect(isAnimating ? 1.5 : 0)
                .animation(.spring(response: 0.5, dampingFraction: 0.4).delay(1),
                           value: isAnimating)
        }
        .onAppear {
            isAnimating.toggle()
        }
    }
}

struct CheckmarkAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CheckmarkAnimationView()
    }
}
