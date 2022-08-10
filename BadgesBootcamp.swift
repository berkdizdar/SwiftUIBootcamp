//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 10.08.2022.
//

import SwiftUI

// Lists
// TabView

struct BadgesBootcamp: View {
    var body: some View {
        
        List {
            Text("Hello, world!")
                .badge(5)
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
        }
//        TabView {
//            Color.red
//            .tabItem {
//                Image(systemName: "heart.fill")
//                Text("Hello")
//            }
//            .badge("New")
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
