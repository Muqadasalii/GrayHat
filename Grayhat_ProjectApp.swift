//
//  Grayhat_ProjectApp.swift
//  Grayhat Project
//
//  Created by Mac on 31/03/2023.
//

import SwiftUI
import Firebase
@main

struct Grayhat_ProjectApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            Test()
        }
    }
}
