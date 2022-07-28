//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 28.07.2022.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    //let timing: Double = 10.0
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.8,
                    blendDuration: 1.0))
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 300 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 300 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 300 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

struct AnimationTimingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationTimingBootcamp()
    }
}
