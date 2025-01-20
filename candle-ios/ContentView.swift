//
//  ContentView.swift
//  candle-ios
//
//  Created by 신희석 on 1/20/25.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let htmlFileName: String
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
             return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        if let htmlPath = Bundle.main.path(forResource: "index", ofType: "html") {
            let htmlURL = URL(fileURLWithPath: htmlPath)
            let directoryURL = htmlURL.deletingLastPathComponent() // HTML 파일이 있는 디렉토리 경로
            webView.loadFileURL(htmlURL, allowingReadAccessTo: directoryURL) // 디렉토리 권한 허용
        } else {
            print("HTML 파일을 찾을 수 없습니다.")
        }
    }
}

struct ContentView: View {
    var body: some View {
        WebView(htmlFileName:"index") // index.html 로드
            .edgesIgnoringSafeArea(.all)
    }
}
#Preview {
    ContentView()
}
