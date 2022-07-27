//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 27.07.2022.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstacks -> Vertical
    // Hstacks -> Horizontal
    // Zstacks -> zIndex (back to front)
    var body: some View {
        // Stack complex layers
        VStack(spacing: 50) {
           
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
           // One layer
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                Circle()
                    .frame(width: 100, height: 100)
                )
        }
}

struct StacksBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootcamp()
    }
}

}

