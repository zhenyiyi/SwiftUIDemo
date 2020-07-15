//
//  ViewController.swift
//  SwiftUIDemo
//
//  Created by fenglin on 2020/7/15.
//  Copyright © 2020 quanshi. All rights reserved.
//

import Foundation
import SwiftUI
import UIKit

struct ViewController<T: UIViewController>: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ViewController<T>>) -> UIViewController {
        return T()
    }
    
    func updateUIViewController(_ uiViewController: ViewController<T>.UIViewControllerType, context: UIViewControllerRepresentableContext<ViewController<T>>) {
        debugPrint("\(#function): \(type(of: T.self))")
    }
}
