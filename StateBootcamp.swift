//
//  StateBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 27.07.2022.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.pink
    @State var myTitle1: String = "My Title"
    @State var count1: Int = 0
    
    var body: some View {

        ZStack {
            //background
            backgroundColor
                .ignoresSafeArea(.all)
            
            //content
            VStack(spacing: 20){
                Text("\(myTitle1)")
                    .font(.title)
                Text("\(count1)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20){
                    Button("Button 1") {
                        backgroundColor = .green
                        myTitle1 = "Button 1 was pressed."
                        count1 += 1
                    }
                    
                    Button("Button 2") {
                        backgroundColor = .purple
                        myTitle1 = "Button 2 was pressed"
                        count1 -= 1
                        
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
    
    struct StateBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            StateBootcamp()
        }
    }
}
