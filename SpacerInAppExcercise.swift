//
//  SpacerInAppExcercise.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 27.07.2022.
//

import SwiftUI

struct SpacerInAppExcercise: View {
    var body: some View {
        VStack {
            HStack(spacing: 0){
                Image(systemName: "xmark")
                Spacer()
                    //.frame(height:10)
                    //.background(Color.orange)
                
                Image(systemName: "gear")
        }
            .font(.title)
            //.background(Color.yellow)
            .padding(.horizontal)
            //.background(Color.blue)
            
            Spacer()
                //.frame(width: 10)
                //.background(.orange)
            
            Rectangle()
                .frame(height: 55)
      }
        //.background(.yellow)
   }
}

struct SpacerInAppExcercise_Previews: PreviewProvider {
    static var previews: some View {
        SpacerInAppExcercise()
    }
}
