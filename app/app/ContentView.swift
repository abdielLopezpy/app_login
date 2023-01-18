//
//  ContentView.swift
//  app
//
//  Created by alberto lopez  on 01/17/23.
//

import SwiftUI

struct LoginView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var errorMessage: String = ""
    @State private var showAlert: Bool = false
    var body: some View {
        NavigationView {
            VStack {
                TextField("Username", text: $username)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(radius: 5)
            SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(5)
                    .shadow(radius: 5)
                Button(action: login){
                    Text("Log In")
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.blue)
                .cornerRadius(5)
                if !errorMessage.isEmpty{
                    Text(errorMessage)
                    .font(.caption)
                    .foregroundColor(.red)
                    .padding()
                }
            }
            .navigationBarTitle("Loggin app")
            .background(Color.gray)
            .alert(isPresented: $showAlert){
                  Alert(title: Text("Welcome"), message: Text("Succefully logged in"), dismissButton: .default(Text("OK")))}
        }
    }
    private func login() {
        if username == "Admin" && password == "password" {
            showAlert = true
        } else {
            errorMessage = "Invalid username or password"
        }
    }
}
