//
//  ViewController.swift
//  Calculator-iOS
//
//  Created by Rob Zmudzinski on 11/23/22.
//

import UIKit
import Calculator_framework
import CalcPackUno
import CalcPackTres
import Logging

class ViewController: UIViewController {
    var textFieldValX = UITextField()
    var textFieldValY = UITextField()
    var labelValX = UILabel()
    var labelValY = UILabel()
    var labelResult = UILabel()
    var labelResultValue = UILabel()
    var c: Calculator = Calculator()
    var calcUno = CalculatorUno()
    var calcTres = CalculatorTres()
    let logger = Logger(label: "com.example.BestExampleApp.main")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(title: "Caclulate", style: .plain, target: self, action: #selector(calculateValue)),
            UIBarButtonItem(title: "Clear", style: .plain, target: self, action: #selector(clearValue))
        ]
        
        view.addSubview(textFieldValX)
        view.addSubview(textFieldValY)
        view.addSubview(labelValX)
        view.addSubview(labelValY)
        view.addSubview(labelResult)
        view.addSubview(labelResultValue)
        textFieldValX.translatesAutoresizingMaskIntoConstraints = false
        textFieldValY.translatesAutoresizingMaskIntoConstraints = false
        labelValX.translatesAutoresizingMaskIntoConstraints = false
        labelValY.translatesAutoresizingMaskIntoConstraints = false
        labelResult.translatesAutoresizingMaskIntoConstraints = false
        labelResultValue.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            labelValX.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            labelValX.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            
            labelValY.topAnchor.constraint(equalTo: labelValX.bottomAnchor, constant: 40),
            labelValY.leadingAnchor.constraint(equalTo: labelValX.leadingAnchor),
            
            textFieldValY.centerYAnchor.constraint(equalTo: labelValY.centerYAnchor),
            textFieldValY.leadingAnchor.constraint(equalTo: labelValY.trailingAnchor, constant: 10),
            textFieldValY.widthAnchor.constraint(equalToConstant: 100),
            
            textFieldValX.centerYAnchor.constraint(equalTo: labelValX.centerYAnchor),
            textFieldValX.leadingAnchor.constraint(equalTo: labelValX.trailingAnchor, constant: 10),
            textFieldValX.widthAnchor.constraint(equalToConstant: 100),
            
            labelResult.leadingAnchor.constraint(equalTo: labelValY.leadingAnchor),
            labelResult.topAnchor.constraint(equalTo: labelValY.bottomAnchor, constant: 40),
            
            labelResultValue.topAnchor.constraint(equalTo: labelResult.topAnchor),
            labelResultValue.leadingAnchor.constraint(equalTo: labelResult.trailingAnchor, constant: 10)
        ])
        textFieldValX.borderStyle = .roundedRect
        textFieldValX.keyboardType = .numberPad
        textFieldValY.borderStyle = .roundedRect
        textFieldValY.keyboardType = .numberPad
        labelValX.text = "X Value"
        labelValY.text = "Y Value"
        labelResult.text = "Result"
    }
    
    @objc func clearValue() {
        labelResultValue.text = ""
    }
    
    @objc func calculateValue() {
        
        logger.info("Hello World!")
        
        guard let xVal = Int(textFieldValX.text ?? "") else { return }
        guard let yVal = Int(textFieldValY.text ?? "") else { return }
        
        let result = c.multiply(xVal, with: yVal)
        print("Result: \(result)")
        labelResultValue.text = "\(result)"
    }
    
    func addTwoNumbers() {
        
    }
    
    func multiplyTwoNumbers() {
        
    }

}

