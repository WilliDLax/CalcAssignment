//
//  ViewController.swift
//  CalcAssignment
//
//  Created by Wema Bank on 16/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var firstNumber:Double = 0
    var secondNumber:Double = 0
    var result:Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plusBtn(_ sender: Any) {
        performOperation(sign: "+")
    }
    
    @IBAction func minusBtn(_ sender: Any) {
        performOperation(sign: "-")
    }
    
    @IBAction func multiplyBtn(_ sender: Any) {
        performOperation(sign: "x")
    }
    
    @IBAction func divideBtn(_ sender: Any) {
        performOperation(sign: "/")
    }
    
    func performOperation(sign:String){
        if(firstTextField.text == "" || secondTextField.text == ""){
            return
        }
        else{
            firstNumber = Double(firstTextField.text!)!
            secondNumber = Double(secondTextField.text!)!
            switch(sign){
            case "+":
                result = firstNumber + secondNumber
            case "-":
                result = firstNumber - secondNumber
            case "x":
                result = firstNumber * secondNumber
            case "/":
                result = firstNumber / secondNumber
            default:
                return
            }
            let resultText = String(format: "%g", result)
            resultLabel.text = "Result : \(resultText)"
        }
    }
}

