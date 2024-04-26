//
//  SignalIndicatorAnimationView.swift
//  simpleAnimationLikeDislike
//
//  Created by Leandro Bastos on 19/04/22.
//

import SwiftUI

struct SignalIndicatorAnimationView: View {
    @State private var isAnimating = false
    var body: some View {
        VStack {
            SignalIndicatorView(signalStrength: isAnimating ? 5 : 0)
                .frame(width: 100, height: 50)
                .padding()

            Text("Signal")
            Spacer()
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 2).repeatForever(autoreverses: true)) {
                isAnimating.toggle()
            }
        }
    }
}

struct SignalIndicatorAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        SignalIndicatorAnimationView()
    }
}
