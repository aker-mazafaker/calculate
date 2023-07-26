//
//  ViewController.swift
//  calculate
//
//  Created by Akerke on 16.07.2023.
//

import UIKit
import SnapKit
import Foundation

enum Operations: Int {
    case pluse = 99
    case minus = 100
    case divede = 101
    case multiply = 102
   
}

class ViewController: UIViewController {
    
    var currentNumber: String = "" {
        didSet { resultLabel.text = String(Int(currentNumber) ?? 0) }
    }
    var firstOperand: Double = 0
    var tempNumber: String = ""
    var currentOperation: Operations? = nil
    var tempOperation: Operations? = nil
    var showingNumbers: String = ""
       
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        makeConstraints()
        view.backgroundColor = .systemBackground
        
    }
}

private extension ViewController {
    func setupScene() {
        view.addSubview(resultView)
        resultView.addSubview(resultLabel)
        view.addSubview(zeroButton)
        view.addSubview(firstButton)
        view.addSubview(secondButton)
        view.addSubview(thirdButton)
        view.addSubview(fourthButton)
        view.addSubview(fifthButton)
        view.addSubview(sixthButton)
        view.addSubview(seventhButton)
        view.addSubview(eighthButton)
        view.addSubview(ninthButton)
        view.addSubview(ceButton)
        view.addSubview(equalsButton)
        view.addSubview(pluseButton)
        view.addSubview(minusButton)
        view.addSubview(divideButton)
        view.addSubview(multiplyButton)
        resultView.addSubview(showingLabel)
        zeroButton.addTarget(self, action: #selector(digitButtonPressed), for: .touchUpInside)
        firstButton.addTarget(self, action: #selector(digitButtonPressed), for: .touchUpInside)
        secondButton.addTarget(self, action: #selector(digitButtonPressed), for: .touchUpInside)
        thirdButton.addTarget(self, action: #selector(digitButtonPressed), for: .touchUpInside)
        fourthButton.addTarget(self, action: #selector(digitButtonPressed), for: .touchUpInside)
        fifthButton.addTarget(self, action: #selector(digitButtonPressed), for: .touchUpInside)
        sixthButton.addTarget(self, action: #selector(digitButtonPressed), for: .touchUpInside)
        seventhButton.addTarget(self, action: #selector(digitButtonPressed), for: .touchUpInside)
        eighthButton.addTarget(self, action: #selector(digitButtonPressed), for: .touchUpInside)
        ninthButton.addTarget(self, action: #selector(digitButtonPressed), for: .touchUpInside)
        ceButton.addTarget(self, action: #selector(clearButtonPressed), for: .touchUpInside)
        equalsButton.addTarget(self, action: #selector(equalsButtonPressed), for: .touchUpInside)
        pluseButton.addTarget(self, action: #selector(operationPressed), for: .touchUpInside)
        minusButton.addTarget(self, action: #selector(operationPressed), for: .touchUpInside)
        divideButton.addTarget(self, action: #selector(operationPressed), for: .touchUpInside)
        multiplyButton.addTarget(self, action: #selector(operationPressed), for: .touchUpInside)
        
    }
    
    @objc func zeroTapped() {
        if resultLabel.text != "0" {
            if let text = resultLabel.text {
                resultLabel.text = "\(text)\(0)"
            }
            addToShowingNumbers(value: "0")
        }
    }
    
    @objc func digitButtonPressed(sender: Any) {
        guard let button = sender as? UIButton else { return }
        
        if currentOperation != nil {
            tempNumber = currentNumber
            currentNumber = String(button.tag)
            print(currentNumber)
            tempOperation = currentOperation
            currentOperation = nil
        } else {
            currentNumber += String(button.tag)
        }
        addToShowingNumbers(value: "\(button.tag)")
    }
    
    @objc func clearButtonPressed() {
        currentNumber = "0"
        showingNumbers = ""
        showingLabel.text = ""
    }
        
    @objc func equalsButtonPressed() {
        guard let tempOperation = tempOperation,
              let left = Double(tempNumber),
              let right = Double(currentNumber) else {return}
        let resultNumber: Double
        
        switch tempOperation {
        case .pluse:
            resultNumber = left + right
        case .minus:
            resultNumber = left - right
        case .divede:
            resultNumber = left / right
        case .multiply:
            resultNumber = left * right
    
        }
        
        currentNumber = "\(resultNumber)"
        tempNumber = ""
        
        resultLabel.text = String(resultNumber)
        self.tempOperation = nil
        self.currentOperation = nil
        addToShowingNumbers(value:" = \(resultNumber)")
        
    }
    
    @objc func operationPressed(sender: Any) {
        
        guard let button = sender as? UIButton else {return}
        let operation = Operations(rawValue: button.tag)
        var convertedOperation: String = ""
        
        switch operation {
        case .pluse:
            convertedOperation = "+"
        case .minus:
            convertedOperation = "-"
        case .divede:
            convertedOperation =  "/"
        case .multiply:
            convertedOperation = "*"
            
      
        case .none:
            print("none")
        }
        
        currentOperation = operation
        tempNumber = currentNumber
        addToShowingNumbers(value: "\(convertedOperation)")

    }
    
    func addToShowingNumbers(value: String){
        showingNumbers = showingNumbers + value
        showingLabel.text = showingNumbers
        
    }
}
