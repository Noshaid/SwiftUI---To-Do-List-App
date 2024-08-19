//
//  RegisterView.swift
//  To Do List App
//
//  Created by Noshaid Ali on 15/08/2024.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        //Header
        HeaderView(title: "Register",
                   subTitle: "Start organizing todos",
                   angle: -15,
                   background: .orange,
                   offset: -140)
        
        Form {
            TextField("Full Name", text: $name)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            TextField("Email Address", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(.none)
                .autocorrectionDisabled()
            TextField("Password", text: $password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            TLButton(title: "Create Account", background: .green, action: {
                // register
            })
            .padding()
        }
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
