//
//  ViewController.swift
//  Calculator-iOS
//
//  Created by Rob Zmudzinski on 11/23/22.
//

import UIKit
import Calculator_framework

class ViewController: UIViewController {
    var textFieldValX = UITextField()
    var textFieldValY = UITextField()
    var labelValX = UILabel()
    var labelValY = UILabel()
    var calculateButton = UIButton()
    var c: Calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(title: "Caclulate", style: .plain, target: self, action: #selector(calculateValue))
        ]
    }
    @objc func calculateValue() {
        let result = c.multiply(6, with: 5)
        print("Result: \(result)")
    }

}

