//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 29.07.2022.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button (action: {
                showSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            })
//            .fullScreenCover(isPresented: $showSheet, content: {
//                SecondScreen()
//            })
            .sheet(isPresented: $showSheet, content: {
                //Do not add logic
                SecondScreen()
                
            })
        }
    }
    
    struct SecondScreen: View {
        
        @Environment(\.presentationMode) var presentationMode
        var body: some View {
            ZStack(alignment: .topLeading){
                Color.green
                    .ignoresSafeArea()
                
                Button (action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding(20)
                })
            }
        }
    }
    
    struct SheetsBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            //SheetsBootcamp()
            SecondScreen()
        }
    }

}
