//
//  DetailViewController.swift
//  SwiftUIDemo
//
//  Created by fenglin on 2020/7/14.
//  Copyright © 2020 quanshi. All rights reserved.
//

import SwiftUI
import UIKit

class DetailViewController: UIViewController {
    
    override func viewDidLoad() {
        view.addSubview(button)
    }
    
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Open SwiftUI View", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button.setTitleColor(.orange, for: .normal)
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(openContentView),
                         for: .touchUpInside)
        return button
    }()
    
    @objc func openContentView() {
        
    }
}

