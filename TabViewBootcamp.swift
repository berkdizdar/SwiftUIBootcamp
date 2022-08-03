//
//  TabViewBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 3.08.2022.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectedTab: Int = 0
    
    let icons: [String] = ["heart.fill","globe","house.fill","person.fill"
    ]
    
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(30)
            }
        }
        .background(
            RadialGradient(gradient: Gradient(colors: [.red, .blue]), center: .center, startRadius: 5, endRadius: 300)
        )
        .frame(height: 300)
        .tabViewStyle(PageTabViewStyle())
        
//        TabView(selection: $selectedTab) {
//            HomeView()
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//            
//            Text("Browse Tab")
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//            Text("Profile Tab")
//                .tabItem{
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//        }
//        .accentColor(.red)
    }
}


struct TabViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootcamp()
    }
}

//struct HomeView: View {
//    var body: some View {
//        ZStack {
//            Color.red.ignoresSafeArea()
//            Text("Home Tab")
//                .font(.largeTitle)
//                .foregroundColor(.white)
//        }
//    }
//}
