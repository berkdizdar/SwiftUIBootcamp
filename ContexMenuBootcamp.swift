//
//  ContexMenuBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 2.08.2022.
//

import SwiftUI

struct ContexMenuBootcamp: View {
    
    @State var backgroundColor: Color = .blue
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use Context Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgroundColor.cornerRadius(30.0))
        .contextMenu(menuItems: {
            Button {
                backgroundColor = .yellow
            } label: {
                Label("Share post", systemImage: "flame.fill")
            }
            Button {
                backgroundColor = .red
            } label: {
                Text("Report post")
            }
            Button {
                backgroundColor = .green
            } label: {
                HStack {
                    Text("Like post")
                    Image(systemName: "heart.fill")
                }
            }

        })
    }
}

struct ContexMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContexMenuBootcamp()
    }
}
