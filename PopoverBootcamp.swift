//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 29.07.2022.
//

//sheets
//animations
//transitions

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("BUTTON") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
            //Method 1 - Sheet
            //            .sheet(isPresented: $showNewScreen, content: {
            //                NewScreen()
            //            })
            //Method 2 - Transition
            //            ZStack {
            //                if showNewScreen {
            //                    NewScreen(showNewScreen: $showNewScreen)
            //                        .padding(.top, 100)
            //                        .transition(.move(edge: .bottom))
            //                        .animation(.spring())
            //
            //                }
            //            }
            //            .zIndex(2.0)
            
            // Method 2 - Animation Offset
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
    
    struct NewScreen: View {
        
        @Environment(\.presentationMode) var presentationMode
        @Binding var showNewScreen: Bool
        var body: some View {
            ZStack(alignment: .topLeading) {
                Color.purple
                    .ignoresSafeArea()
                
                Button(action: {
                    //presentationMode.wrappedValue.dismiss()
                    showNewScreen.toggle()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(20)
                })
            }
        }
    }
    
    struct PopoverBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            PopoverBootcamp()
            //NewScreen()
        }
    }
}
