//
//  AlertsBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 1.08.2022.
//

import SwiftUI

struct AlertsBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
    @State var backgroundColor: Color = Color.yellow
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    
    enum MyAlerts {
        case sucess
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea()
            
            VStack {
                Button("Button 1") {
                    alertType = .error
                    //                    alertTitle = "Error Uploading Video"
                    //                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertType = .sucess
                    //                    alertTitle = "Succesfully uploaded video"
                    //                    alertMessage = "Your video is now public"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert) {
                getAlert()
            }
        }
    }
    func getAlert() -> Alert {
        switch alertType {
        case .error:
            return Alert(title: Text("There was an error."))
        case .sucess:
            return Alert(
                title: Text("This was success!"),
                message: nil,
                dismissButton: .default(Text("OK"), action: {
                    backgroundColor = .green
                }))
        default:
            return Alert(title: Text("Error"))
        }
        //        return Alert(
        //            title: Text(alertTitle),
        //            message: Text(alertMessage),
        //            dismissButton: .default(Text("OK")))
        //        return Alert(
        //            title: Text("This is the title"),
        //            message: Text("Here will describe the error."),
        //            primaryButton: .destructive(Text("Delete"), action: {
        //                backgroundColor = .red
        //            }),
        //            secondaryButton: .cancel())
        //        //Alert(title: Text("There was an error."))
    }
    
    struct AlertsBootcamp_Previews: PreviewProvider {
        static var previews: some View {
            AlertsBootcamp()
        }
    }
}

