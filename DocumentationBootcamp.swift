//
//  DocumentationBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 3.08.2022.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    //MARK: Properties
    @State var data: [String] = [
        "Apples", "Oranges", "Bananas"
    ]
    @State var showAlert: Bool = false
    
    //MARK: Body
    var body: some View {
        NavigationView {
            ZStack {
                Color.red.ignoresSafeArea()
                foregroundLayer
                    .navigationTitle("Documentation")
                    .navigationBarItems(trailing:
                                            Button("Alert", action: {
                        showAlert.toggle()
                    })
                    )
                    .alert(isPresented: $showAlert, content: {
                        getAlert(text: "This is the alert!")
                    })
            }
        }
    }
    
    private var foregroundLayer: some View {
        ScrollView {
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text (name)
                    .font(.headline)
            }
        }
    }
    
    //MARK: Functions
    /// Gets an alert with a specified title
    /// - Parameter text: This is the title for the alert
    /// - Returns: Returns an alert with a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}
//MARK: Preview
struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
