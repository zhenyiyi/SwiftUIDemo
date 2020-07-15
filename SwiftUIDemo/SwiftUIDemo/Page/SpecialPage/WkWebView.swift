//
//  WkWebView.swift
//  SwiftUIDemo
//
//  Created by fenglin on 2020/7/15.
//  Copyright © 2020 quanshi. All rights reserved.
//

import SwiftUI
import WebKit

struct WebViewPage: UIViewRepresentable {
    
    func makeUIView(context: UIViewRepresentableContext<WebViewPage>) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebViewPage>) {
        let req = URLRequest(url: URL(string: "https://www.baidu.com")!)
        uiView.load(req)
    }
}
