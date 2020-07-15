
//
//  PageRow.swift
//  SwiftUIDemo
//
//  Created by fenglin on 2020/7/15.
//  Copyright © 2020 quanshi. All rights reserved.
//

import SwiftUI

struct PageRow: View {
    let title: String!
    let subTitle: String?
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title).bold()
            if subTitle != nil {
                Text(subTitle!).font(.subheadline).lineLimit(nil).opacity(0.6)
            }
        }
    }
}
