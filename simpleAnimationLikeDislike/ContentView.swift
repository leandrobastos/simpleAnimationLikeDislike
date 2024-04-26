//
//  ContentView.swift
//  simpleAnimationLikeDislike
//
//  Created by Leandro Bastos on 08/04/22.
//

import SwiftUI

struct ContentView: View {
//    @State private var impressionState: ImpressionState = .none
//    let views = [
//        viewModel(title: "Animation 1", nameView: AnyView(LikeDislikeAnimationView())),
//        viewModel(title: "Animation 2", nameView: AnyView(HeartAnimationView())),
//        viewModel(title: "Animation 3", nameView: AnyView(BatteryAnimationView()))
//    ]
    @State private var progress = 0.0

    var body: some View {
//        NavigationView {
//            ScrollView {
//                VStack {
//                    ForEach(views, id: \.id) { v in
//                        NavigationLink(destination: v.nameView) {
//                            Text(v.title)
//                        }
//                    }
//                }
//            }
//            .navigationTitle("Animations")
//            .padding()
//        }
        ZStack {
            Color.black.opacity(0.9)
                .ignoresSafeArea()
            VStack {
                BatteryAnimationView(progress: $progress, fill: .green, outline: .white)
                Slider(value: $progress, in: 0.0...1.0)
                    .tint(.green)
                    .padding()
            }
        }
        .onAppear {
            withAnimation(.interpolatingSpring(stiffness: 20.0, damping: 8.0)) {
                progress = 0.7
            }
        }
    }

//        .onAppear {
//            withAnimation(
////                .interactiveSpring(stiffness: 20.0, damping: 8.0)
//            ) {
//                progress = 0.7
//            }
//        }

//    Slider(value: $progress, in: 0.0...1.0)
//        .tint(.green)
//        .padding()
}

struct viewModel {
    let id = UUID()
    let title: String
    let nameView: AnyView
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
