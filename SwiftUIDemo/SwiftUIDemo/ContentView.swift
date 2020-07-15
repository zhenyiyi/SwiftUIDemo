//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by fenglin on 2020/7/14.
//  Copyright © 2020 quanshi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("基础控件")) {
                    NavigationLink(destination: TextPage()) {
                        PageRow(title: "Text", subTitle: "UILabel -> Text")
                    }
                    NavigationLink(destination: WebViewPage()) {
                        PageRow(title: "TextFiled", subTitle: "UITextFiled -> TextFiled")
                    }
                    NavigationLink(destination: WebViewPage()) {
                        PageRow(title: "TextEditor", subTitle: "UITextView -> ")
                    }
                }
                Section(header: Text("特殊视图")) {
                    NavigationLink(destination: WebViewPage()) {
                        PageRow(title: "WKWebView", subTitle: "打开网页")
                    }
                    NavigationLink(destination: ViewController<DetailViewController>()) {
                        PageRow(title: "UIViewController", subTitle: "打开UIViewController")
                    }
                }
            }
            .navigationBarTitle(Text("SwiftUI Demo"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
