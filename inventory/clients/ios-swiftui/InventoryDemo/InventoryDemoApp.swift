//
//  InventoryDemoApp.swift
//  InventoryDemo
//
//  Created by Andrew Morgan on 21/04/2021.
//

import SwiftUI
import RealmSwift

// Important: you must create a text file in the root folder of this project (where the InventoryDemo.xcproject is)
// called "realm-app-id.txt" and put inside a line with the realm app id you've created
// that id will look like myappsync-xxxxx
let (success, filecontent) = readFile(named: "realm-app-id.txt")
 
let app = RealmSwift.App(id: success ? filecontent: "Couldn't read secrets file. Is there?" )
var store = "101"

@main
struct InventoryDemoApp: SwiftUI.App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
