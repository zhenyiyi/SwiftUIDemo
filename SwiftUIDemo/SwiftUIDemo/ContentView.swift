//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by fenglin on 2020/7/14.
//  Copyright © 2020 quanshi. All rights reserved.
//

import SwiftUI


struct TextContentView: View {
    var body: some View {
        Text("Hello World")
            .font(.largeTitle)
            .foregroundColor(Color.green)
            .lineSpacing(50)
            .lineLimit(nil)
            .padding()
    }
}



let dateFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .long
    return formatter
}()

var now = Date()
struct TextContentView2: View {
    var body: some View {
        Text("Task due date: \(now, formatter: dateFormatter)")
    }
}



struct ImageView: View {
    var body: some View {
        Image("6_0")
    }
}



struct ImageView2: View {
    var body: some View {
        Image(systemName: "cloud.heavyrain.fill")
            .foregroundColor(Color.red)
            .font(.largeTitle)
    }
}

/*
struct ContentView: View {
    var body: some View {
        Image("account_apply_email_red")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.bottom)
    }
}*/


struct ListContentView: View {
    var body: some View {
        List {
            Text("ANC")
        }.onTapGesture {
            print("tap action")
        }
    }
}

/*
struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Hello").navigationBarTitle(Text("Navi Title"), displayMode: .inline)
        }
    }
}*/

struct Row: Identifiable {
    var id = UUID()
    var name: String
}

let data = [
    Row(name: "Text 的使用"),
//    Row(name: "Text2 的使用"),
//    Row(name: "Image 的使用"),
//    Row(name: "Image2 的使用"),
//    Row(name: "Alerts")
]

let destinations: [Detail] = [
    Detail(detail: TextContentView()),
//    TextContentView2(),
//    ImageView(),
//    ImageView2(),
//    ListContentView()
]

struct Detail {
    var detail: Any
}

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Text("AA")
            }
            .navigationBarTitle(Text("SwiftUI Demo"), displayMode: .inline)
            .navigationBarItems(
                trailing:
                    Button(
                        action: {
                             print("Going to Setting")
                        }, label: { Text("设置")}
                    )
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
