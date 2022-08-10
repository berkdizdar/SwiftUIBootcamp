//
//  ButtonStylesBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 10.08.2022.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack {
            Button {
            } label: {
                Text("Button Title")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .controlSize(.large)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            // .buttonStyle(.plain)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.regular)
            .buttonStyle(.borderedProminent)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            
            Button("Button Title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            //.buttonStyle(.borderless)
            .controlSize(.mini)
            
        }
    }
}

struct ButtonStylesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStylesBootcamp()
    }
}
