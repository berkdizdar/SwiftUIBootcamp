//
//  OnboardingView.swift
//  SwiftfulThinkingBootCamp
//
//  Created by Berk Dizdar on 5.08.2022.
//

import SwiftUI

struct OnboardingView: View {
    
    //Onboarding states:
    /*
     0 - Welcome Screen
     1 - Add name
     2- Add age
     3 - Add gender
     */
    
    let transition: AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading))
    // Onboarding inputs
    @State var onboardingState: Int = 1
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    // for the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // Content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transition)
                case 1:
                    addNameSection
                        .transition(transition)
                case 2:
                    addAgeSection
                        .transition(transition)
                case 3:
                    addGenderSection
                        .transition(transition)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                }
            }
            // Buttons
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert, content: {
            return Alert(title: Text(alertTitle))
        })
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

// MARK: Components

extension OnboardingView {
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "SIGN UP" :
                onboardingState == 3 ? "Finish" :
                "Next"
        )
        .font(.headline)
        .foregroundColor(.purple)
        .frame(height: 55)
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(10)
        .animation(nil)
        .onTapGesture {
            handleNextButtonPressed()
        }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find Your Match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white)
                    , alignment: .bottom )
            Text("This is the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack(spacing: 40) {
            Text("What's your name ?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 40) {
            Text("What's your age ?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Text("\(String(format: "%.0f",age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack(spacing: 40) {
            Text("What's your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Picker(selection: $gender,
                   label:
                    Text(gender.count > 1 ? gender : "Select a gender")
                .font(.headline)
                .foregroundColor(.purple)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(.white)
                .cornerRadius(10),
                   content: {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
                Text("Non-Binary").tag("Non-Binary")
            })
            .pickerStyle(MenuPickerStyle())
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

// MARK: Functions

extension OnboardingView {
    
    func handleNextButtonPressed() {
        // Check Inputs
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters long!")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select a gender before moving forward!")
                return
            }
        default:
            break
        }
        if onboardingState == 3 {
            //sign inn
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
    
    func signIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
}
