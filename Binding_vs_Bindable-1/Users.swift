//
//  Users.swift
//  Binding_vs_Bindable-1
//
//  Created by Famil Mustafayev on 23.08.24.
//

import Foundation
import SwiftData

class Users:ObservableObject {
    @Published var name: String = ""
    @Published var surname: String = ""
 
}
