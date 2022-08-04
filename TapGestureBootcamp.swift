//
//  TapGestureBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 4.08.2022.
//

import SwiftUI

struct TapGestureBootcamp: View {
    
    @State var isSelected: Bool = false
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .frame(height: 200)
            .foregroundColor(isSelected ? .green : .red)
        
        Button(action: {
            isSelected.toggle()
        }, label: {
            Text("Button")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(25)
        })
        
        Text("Tap Gesture")
            .font(.headline)
            .foregroundColor(.white)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.blue)
            .cornerRadius(25)
//            .onTapGesture {
//                isSelected.toggle()
//            }
            .onTapGesture(count: 5, perform: {
                isSelected.toggle()
            })
        
        Spacer()
    }
}

struct TapGestureBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureBootcamp()
    }
}
