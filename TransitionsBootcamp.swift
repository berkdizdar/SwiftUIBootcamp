//
//  TransitionsBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 28.07.2022.
//

import SwiftUI

struct TransitionsBootcamp: View {
    
    @State var showView: Bool = false
    
    var body: some View {
        ZStack (alignment: .bottom){
            
            VStack {
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(
                        insertion: .move(edge: .leading),
                        removal: .move(edge: .trailing)))
                    .animation(.easeInOut)
                
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
    }
    
    struct TransitionsBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            TransitionsBootcamp()
        }
    }
}
