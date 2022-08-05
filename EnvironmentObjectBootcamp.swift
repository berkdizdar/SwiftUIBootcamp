//
//  EnvironmentObjectBootcamp.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 5.08.2022.
//

import SwiftUI

//ObservedObject
//StateObject
//Environment

class EnvironmentViewModel: ObservableObject {
    
    @Published var dataArray: [String] = []
    
    init() {
        
    }
    func getData() {
        self.dataArray.append("iPhone")
        self.dataArray.append("iPad")
        self.dataArray.append(contentsOf: ["iPhone","iPad","iMac","Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @State var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink(
                        destination: DetailView(selectedItem: item),
                        label: {
                        Text(item)
                    })
                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

//MARK: - Views
struct DetailView: View {
    
    let selectedItem: String
   
    
    var body: some View {
        ZStack {
            //Background
            Color.orange.ignoresSafeArea()
            //ForegroundColor
            NavigationLink(destination: FinalView(),label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .background(.white)
                    .cornerRadius(30)
            })
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    var body: some View {
        //Background
        Color.blue.ignoresSafeArea()
        
        //Foreground
        ScrollView {
            VStack(spacing: 20) {
                ForEach(viewModel.dataArray, id: \.self) { item in
                    Text(item)
                }
            }
            .foregroundColor(.white)
            .font(.largeTitle)
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
        DetailView(selectedItem: "iPhone")
        FinalView()
    }
}

