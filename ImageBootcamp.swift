//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 20.07.2022.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("google")
            //.renderingMode(.template)
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 300, height: 200)
            .foregroundColor(.green)
            //.clipped()
            .cornerRadius(150)
            //.clipShape(
                //Circle()
                //RoundedRectangle(cornerRadius: 25.0)
                //Ellipse()
                //)
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
