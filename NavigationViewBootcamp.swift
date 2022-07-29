//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 29.07.2022.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello, World!", destination: MyOtherScreen())
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
            .navigationBarItems(
                
                leading:
                    HStack {
                        
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                ,
                trailing: NavigationLink(destination: MyOtherScreen(), label: {
                    Image(systemName: "gear")
                })
                .accentColor(.red)
            )
        }
    }
    
    struct MyOtherScreen: View {
        @Environment(\.presentationMode) var presentationMode
        var body: some View {
            Color.green.ignoresSafeArea(.all)
                .navigationTitle("Green Screen")
            //.navigationBarHidden(true)
            
            VStack{
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
            }
            
            NavigationLink("Click Here", destination: Text("Third Screen"))
        }
    }
    
    struct NavigationViewBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            NavigationViewBootcamp()
        }
    }
}
