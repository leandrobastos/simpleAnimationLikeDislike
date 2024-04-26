//
//  FruitsAnimationView.swift
//  simpleAnimationLikeDislike
//
//  Created by Leandro Bastos on 20/06/22.
//

import SwiftUI

enum Fruit: String, Hashable, CaseIterable {
    case banana = "🍌"
    case orange = "🍊"
    case peach = "🍑"
    case apple = "🍎"
}

extension Fruit: Identifiable {
    var id: String { self.rawValue }
}

struct FruitsAnimationView: View {
    var body: some View {
        
        ZStack {
            List(Fruit.allCases) { fruit in
//                NavigationLink(fruit.rawValue, value: fruit)
            }
        }
    }
}

struct FruitsAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsAnimationView()
    }
}
