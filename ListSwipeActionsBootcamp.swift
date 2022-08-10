//
//  ListSwipeActionsBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 10.08.2022.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = [
    "apple", "orange","banana","peach"
    ]
    var body: some View {
        List {
            ForEach(fruits, id:\.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.green)
                        
                        Button("Save") {
                            
                        }
                        .tint(.blue)
                        
                        Button("Junk") {
                            
                        }
                        .tint(.black)
            }
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Share") {
                            
                        }
                        .tint(.yellow)
                    }
        }
            //onDelete(perform: delete
    }
}

struct ListSwipeActionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListSwipeActionsBootcamp()
    }
}
}
