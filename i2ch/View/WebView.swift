//
//  WebView.swift
//  i2ch
//
//  Created by Антон Баскаков on 23.07.2024.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
  @State var text: String
   
  func makeUIView(context: Context) -> WKWebView {
    return WKWebView()
  }
   
  func updateUIView(_ uiView: WKWebView, context: Context) {
    uiView.loadHTMLString(text, baseURL: nil)
  }
}


#Preview {
    WebView(text: "<html><body><h1>Hello World</h1></body></html>")
}
