//
//  ViewController.swift
//  Calculator-iOS
//
//  Created by Rob Zmudzinski on 11/23/22.
//

import UIKit
import Calculator_framework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var c: Calculator = Calculator()
        c.multiply(6, with: 5)
        
    }


}

