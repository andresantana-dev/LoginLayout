//
//  ContentView.swift
//  LoginDribbleClone
//
//  Created by André Santana on 30/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            VStack(	spacing: 30) {
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                Text("Welcome")
                    .font(Font.system(size: 22))
                    .bold()
                
                Text("Enter your account here")
                    .font(Font.system(size: 12))
                    .bold()
                    .foregroundColor(.gray)
                    .offset(y: -25)
            }
            
            VStack(spacing: -10) {
                VStack {
                    Text("Email")
                        .font(Font.system(size: 12))
                        .foregroundColor(.gray)
                        .bold()
                        .frame(width: 310, height: 50, alignment: .leading)
                    
                    ZStack {
                        TextField("", text: $email)
                            .frame(width: 280, height: 20)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black.opacity(0.1), lineWidth: 1)
                            )
                        
                        
                        Label("Email", systemImage: "envelope")
                            
                            .foregroundColor(Color.black.opacity(0.2))
                            .offset(x: -100)
                    }
                    .offset(y: -20)
                }
                
                VStack {
                    Text("Password")
                        .font(Font.system(size: 12))
                        .foregroundColor(.gray)
                        .bold()
                        .frame(width: 310, height: 50, alignment: .leading)
                    
                    ZStack {
                        TextField("", text: $password)
                            .frame(width: 280, height: 20)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black.opacity(0.1), lineWidth: 1)
                            )
                        
                        
                        Label("Password", systemImage: "lock")
                            .foregroundColor(Color.black.opacity(0.2))
                            .offset(x: -85)
                    }
                    .offset(y: -20)
                }

            }
            .offset(y: -30)
            
            VStack(spacing: 30) {
                Text("Forget password?")
                    .font(Font.system(size: 12).bold())
                    .foregroundColor(.orange)
                    .frame(width: 310, height: 20, alignment: .trailing)
                
                Button(action: {}, label: {
                    Text("SIGN IN")
                        .foregroundColor(.white)
                        .bold()
                        .frame(width: 280, height: 50)
                        .background(Color.orange)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
                .offset(y: -15)
            }
            .offset(y: -50)
            
            VStack {
                HStack(spacing: 10) {
                    Rectangle()
                        .foregroundColor(Color.black.opacity(0.2))
                        .frame(height: 1)
                    
                    Text("Or Sign In")
                        .font(Font.system(size: 12))
                        .foregroundColor(.gray)
                        .bold()
                    
                    Rectangle()
                        .foregroundColor(Color.black.opacity(0.2))
                        .frame(height: 1)
                }
                .frame(width: 310)
                .padding()
                .offset(y: -60)
                
                HStack(spacing: 20) {
                    Button(action: {}, label: {
                        Image("google")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black.opacity(0.1), lineWidth: 1)
                            )
                    })
                    
                    Button(action: {}, label: {
                        Image("facebook")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .padding()
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black.opacity(0.1), lineWidth: 1)
                            )
                    })
                }
                .offset(y: -60)
                
                Spacer()
                
                HStack {
                    Text("Don't have an account?")
                        .font(Font.system(size: 12))
                        .foregroundColor(.gray)
                        .bold()
                    
                    Text("Sign Up")
                        .font(Font.system(size: 12))
                        .bold()
                        .foregroundColor(.orange)
                }
                .offset(y: -15)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
