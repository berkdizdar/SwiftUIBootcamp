//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 27.07.2022.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
            
            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(Color.white)
                    .cornerRadius(25.0)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)
                
            }
        }
            
    }
        //.background(Color.blue)
        .background(
            Color.blue
                .ignoresSafeArea(edges: .top)
        )
        
        
//        ZStack {
//
//            //Background layer
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//
//            //Foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(Color.red)
//        }
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
