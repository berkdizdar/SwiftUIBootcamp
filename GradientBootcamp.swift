//
//  GradientBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 20.07.2022.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
//                LinearGradient(
//                    gradient: Gradient(colors: [Color.red, Color.orange]),
//                    startPoint: .topLeading,
//                    endPoint: .bottom)
//                RadialGradient(
//                      gradient: Gradient(colors: [Color.red, Color.blue]),
//                      center: .topLeading,
//                      startRadius: 5,
//                      endRadius: 400)
                AngularGradient(
                    gradient:Gradient(colors: [Color.red, Color.blue]),
                    center: .center,
                    angle: .degrees(180 + 45)
                    )
                
            )
            .frame(width: 300, height: 200)
    }
}

struct GradientBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootcamp()
    }
}
