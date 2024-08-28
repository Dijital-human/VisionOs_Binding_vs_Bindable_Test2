//
//  ContentView.swift
//  Binding_vs_Bindable-1
//
//  Created by Famil Mustafayev on 23.08.24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @EnvironmentObject var users: Users
    @State private var open: Bool = false
    @Environment (\.openWindow) var openWindow
    var body: some View {
        VStack{
            VStack(spacing: 50){
                Spacer()
                TextField("Ended Your name", text: $users.name)
                TextField("Ended Your surname", text: $users.surname)
                Spacer()
            }.padding().frame(maxWidth: 500).textFieldStyle(.automatic).background(.black)
            Button(action: {
                openWindow(id: "openView")
            }, label: {
                Text("Add")
            })
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
