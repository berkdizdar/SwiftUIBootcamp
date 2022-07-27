//
//  SpacerBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 27.07.2022.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {

        HStack(spacing: 0){
            
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .frame(width: 50, height: 50)
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 50, height: 50)
            
            
            Spacer()
                .frame(height: 10)
                .background(Color.orange)
            
            Rectangle()
                .fill(Color.green)
                .frame(width: 50, height: 50)
            
            Spacer(minLength: 0)
                .frame(height: 10)
                .background(Color.orange)
            
            
        }
        .background(Color.yellow)
        //.padding(.horizontal, 200)
        .background(Color.blue)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
