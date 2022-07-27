//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 27.07.2022.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor2: Color = Color.pink
    
    var body: some View {
        ZStack {
            //background
            backgroundColor2
                .ignoresSafeArea()
            
            //content
           contentLayer
        }
    }
    
    var contentLayer: some View {
        VStack {
            Text("title")
                .font(.largeTitle)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("press me")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.black)
                    .cornerRadius(10)
            })
        }
        
    }
    
    func buttonPressed() {
        backgroundColor2 = .yellow
        
    }
    
    struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            ExtractedFunctionsBootcamp()
        }
    }
}
