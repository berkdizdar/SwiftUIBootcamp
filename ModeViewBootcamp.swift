//
//  ModeViewBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 4.08.2022.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModeViewBootcamp: View {
    
    @State var users: [UserModel] = [
        
        UserModel(displayName: "Nick", userName: "nick123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Emily", userName: "itsemily1995", followerCount: 55, isVerified: false),
        UserModel(displayName: "Samantha", userName: "nick123", followerCount: 400, isVerified: false),
        UserModel(displayName: "Chris", userName: "nick123", followerCount: 90, isVerified: true),
    ]
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 40, height: 40)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundColor(.blue)
                        }
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
        }
    }
}

struct ModeViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ModeViewBootcamp()
    }
}
