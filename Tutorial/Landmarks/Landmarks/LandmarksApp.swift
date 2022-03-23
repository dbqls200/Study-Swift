//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 김유빈 on 2022/03/18.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
