//
//  SymbolAnimationView.swift
//  simpleAnimationLikeDislike
//
//  Created by Leandro Bastos on 07/06/22.
//

import SwiftUI

struct SymbolAnimationView: View {
    @State private var value = 0.5
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "aqi.low")
                Image(systemName: "wifi")
                Image(systemName: "chart.bar.fill")
                Image(systemName: "waveform")
            }
            .scaleEffect(value)
            .font(.system(size: 40))
            .foregroundColor(.blue)

            Slider(value: $value)

            Text("Value: \(value)")
        }
        .padding()
    }
}

struct SymbolAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolAnimationView()
    }
}
