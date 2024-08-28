//
//  Binding_vs_Bindable_1App.swift
//  Binding_vs_Bindable-1
//
//  Created by Famil Mustafayev on 23.08.24.
//

import SwiftUI

@main
struct Binding_vs_Bindable_1App: App {
    @State var users = Users()

    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(users)
        }
        WindowGroup(id: "openView") {
            OpenView().environmentObject(users)
        }
    }
}
