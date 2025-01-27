//
//  candle_iosApp.swift
//  candle-ios
//
//  Created by 신희석 on 1/20/25.
//

import SwiftUI

@main
struct candle_iosApp: App {
    init(){
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
    private func setupLocalWebServer() {
        guard let resourcePath = Bundle.main.resourcePath else {
            print("Resource path not found")
            return
        }
    }
}
