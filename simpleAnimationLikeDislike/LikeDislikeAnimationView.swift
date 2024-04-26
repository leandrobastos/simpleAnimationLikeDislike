//
//  LikeDislikeAnimationView.swift
//  simpleAnimationLikeDislike
//
//  Created by Leandro Bastos on 08/04/22.
//

import SwiftUI

struct LikeDislikeAnimationView: View {
    @State private var impressionState: ImpressionState = .none

    var body: some View {
        VStack {
            Spacer()

            Text("👍🏻")
                .scaleEffect(impressionState != .none ? 2 : 1.5)
                .rotationEffect(Angle(degrees: impressionState == .dislike ? 180 : 0))
                .padding()

            Spacer()
                .frame(height: 20)

            HStack(spacing: 35) {
                Button("Like") {
                    withAnimation {
                        impressionState = .like
                    }
                }

                Button("Dislike") {
                    withAnimation {
                        impressionState = .dislike
                    }
                }
            }

            Spacer()
        }
    }
}

enum ImpressionState {
    case dislike
    case like
    case none
}

struct LikeDislikeAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        LikeDislikeAnimationView()
    }
}
