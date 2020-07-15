//
//  TextPage.swift
//  SwiftUIDemo
//
//  Created by fenglin on 2020/7/15.
//  Copyright © 2020 quanshi. All rights reserved.
//

import SwiftUI

struct TextPage: View {
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            Text("我是一个Label")
            Text("我是一个Label")
                .font(.largeTitle)
                .foregroundColor(Color.green)
                .bold()
                .italic()
                .shadow(radius: 1)
            Text("https://www.baidu.com")
                .underline()
                .onTapGesture {
                    UIApplication.shared.openURL(URL(string: "https://www.baidu.com")!)
            }
            
            HStack {
                Text("SwiftUIDemo11")
                Text("SwiftUIDemo456").bold()
                Text("SwiftUIDemo123").foregroundColor(Color.gray)
            }
            
            Text("Views and controls are the visual building blocks of your app’s user interface." +
            " Use them to present your app’s content onscreen.")
                .lineLimit(nil)
                .padding()
        }
    }
}
