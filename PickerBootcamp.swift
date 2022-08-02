//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 2.08.2022.
//

import SwiftUI

struct PickerBootcamp: View {
    @State var selection: String = "Most Recent"
    let filterOptipns: [String] = [
        "Most Recent","Most Popular","Most Liked"
    ]
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    var body: some View {
        Picker(
            selection: $selection,
            label: Text("Picker"),
            content: {
                ForEach(filterOptipns.indices) { index in
                    Text(filterOptipns[index])
                        .tag(filterOptipns[index])
                }
            })
        .pickerStyle(SegmentedPickerStyle())
        //.background(.red)
        
        
    }
    
    struct PickerBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            PickerBootcamp()
        }
    }
}
