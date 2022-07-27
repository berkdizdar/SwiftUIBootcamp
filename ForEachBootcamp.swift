//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 27.07.2022.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "Hello", "Hey everyone" ]
    let myString: String = "Hello"
    
    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            
            ForEach(0..<10) { index in
                Circle()
                    .frame(height: 50)
           
                }
            }
        }
    }


struct ForEachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForEachBootcamp()
    }
}
