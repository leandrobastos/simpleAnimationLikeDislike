//
//  HeartAnimationView.swift
//  simpleAnimationLikeDislike
//
//  Created by Leandro Bastos on 08/04/22.
//

import SwiftUI

struct HeartAnimationView: View {
    @State private var isAnimating = false

    var body: some View {
//        NavigationView {
        VStack {
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .scaledToFit()
                .scaleEffect(isAnimating ? 0.9 : 1)
                .foregroundColor(.red)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5).repeatForever()) {
                isAnimating.toggle()
            }
        }
//        }.navigationTitle("Teste")
    }
}

struct HeartAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        HeartAnimationView()
    }
}
