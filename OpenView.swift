//
//  OpenView.swift
//  Binding_vs_Bindable-1
//
//  Created by Famil Mustafayev on 23.08.24.
//

import SwiftUI

struct OpenView: View {
    @EnvironmentObject var users: Users
    @Environment (\.dismissWindow) var dismissWindow
    var body: some View {
        VStack{
            Text("Open View")
            
            
            Text("Name : \(users.name)")
            Text("Name : \(users.surname)")
            VStack{
                TextField("Ended Name", text: $users.name)
                TextField("Ended Surname", text: $users.surname)
            }.frame(maxWidth: 600)
            
            Button("dismiss") {
                dismissWindow(id: "openView")
            }
        }.font(.extraLargeTitle)
    }
}

#Preview {
    OpenView()
}
