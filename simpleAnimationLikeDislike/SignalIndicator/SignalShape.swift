//
//  SignalShape.swift
//  simpleAnimationLikeDislike
//
//  Created by Leandro Bastos on 19/04/22.
//

import Foundation
import SwiftUI

struct SignalShape: Shape {
    var count = 5

    var animatableData: Double {
        get { Double(count) }
        set { count = Int(newValue.rounded()) }
    }

    func path(in rect: CGRect) -> Path {
        var path = Path()
        let maxRectWidth = (Int(rect.maxX) / 5)

        for i in 0..<5 {
            if i < count {
                let startX = (i * maxRectWidth)
                let height = Int(Int(rect.maxY) / 5 * (i + 1))

                let roundedRect = CGRect(x: startX, y: Int(rect.maxY) - height, width: maxRectWidth - 4, height: height)

                path.addRoundedRect(in: roundedRect, cornerSize: CGSize(width: 5, height: 5))
            }
        }

        return path
    }
}
