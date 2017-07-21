//
//  ViewController.swift
//  Calculator Final
//
//  Created by Suvin Gamage on 7/9/17.
//  Copyright © 2017 Suvin Gamage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numpressed = false
    var operationpressed = false
    var num1 = 0.0
    var num2 = 0.0
    var holder = 0.0
    var operation = ""
    @IBOutlet var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func plus(sender: UIButton) {
        sender.showsTouchWhenHighlighted = true
        numpressed = false
        num1 = Double(result.text! as String)!
        result.text = "+"
        operation = "+"
        operationpressed = true
    }

    @IBAction func minus(sender: UIButton) {
        sender.showsTouchWhenHighlighted = true
        numpressed = false
        num1 = Double(result.text! as String)!
        result.text = "-"
        operation = "-"
        operationpressed = true
    }
    @IBAction func multiply(sender: UIButton) {
        sender.showsTouchWhenHighlighted = true
        numpressed = false
        num1 = Double(result.text! as String)!
        result.text = "*"
        operation = "*"
        operationpressed = true
    }
    @IBAction func divide(sender: UIButton) {
        sender.showsTouchWhenHighlighted = true
        numpressed = false
        num1 = Double(result.text! as String)!
        result.text = "/"
        operation = "/"
        operationpressed = true
    }
    
    @IBAction func equals(sender: UIButton) {
       result.text = String(holder)
       

    }
    @IBAction func clear(sender: UIButton) {
        result.text = ""
        num1 = 0
        num2 = 0
        holder = 0
        operationpressed = false
    }
    @IBAction func numberpressed(sender: UIButton) {
        let num = sender.currentTitle!
        if numpressed{
            result.text = result.text! + num
        }else{
            result.text = num
            numpressed = true
        }
        if operationpressed == false{
            holder = Double(result.text!)!
        }else{
            switch(operation){
            case "+": holder = holder + Double(result.text!)!
                break
            case "-": holder = holder - Double(result.text!)!
                break
            case "*": holder = holder * Double(result.text!)!
                break
            case "/": holder = holder / Double(result.text!)!
                break
            default:break
                
            }

        }
    
     
    }

}