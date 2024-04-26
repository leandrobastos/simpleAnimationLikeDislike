//
//  SignalIndicatorView.swift
//  simpleAnimationLikeDislike
//
//  Created by Leandro Bastos on 19/04/22.
//

import SwiftUI

struct SignalIndicatorView: View {
    var signalStrength = 1
    var body: some View {
        ZStack {
            SignalShape()
                .fill(.gray)

            SignalShape(count: signalStrength)
                .fill(.black)
        }
    }
}

struct SignalIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        SignalIndicatorView()
    }
}
