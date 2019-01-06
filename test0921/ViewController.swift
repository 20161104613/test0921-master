//
//  ViewController.swift
//  test0921
//
//  Created by 20161104613 on 2018/9/21.
//  Copyright © 2018年 20161104613. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UITextField!
    var re = 0 //  判断display.text前是否存在符号
    var add = 0 //判断运算符是否出现过
    var judge = 0   //判断小数点是否出现过
    var result = ""
    var number = 0
    var count = 0
    var count2 = 0
    @IBAction func one(_ sender: Any) {
        if re == 1{
            display.text = "1"
        }
        else{
            display.text = display.text!+"1"
        }
    }
    
    @IBAction func two(_ sender: Any) {
        if re == 1{
            display.text = "2"
        }
        else{
            display.text = display.text!+"2"
        }
    }
    
    @IBAction func three(_ sender: Any) {
        if re == 1{
            display.text = "3"
        }
        else{
            display.text = display.text!+"3"
        }
    }
    
    @IBAction func four(_ sender: Any) {
        if re == 1{
            display.text = "4"
        }
        else{
            display.text = display.text!+"4"
        }
    }
    
    @IBAction func five(_ sender: Any) {
        if re == 1{
            display.text = "5"
        }
        else{
            display.text = display.text!+"5"
        }
    }
    
    @IBAction func six(_ sender: Any) {
        if re == 1{
            display.text = "6"
        }
        else{
            display.text = display.text!+"6"
        }
    }
    
    @IBAction func seven(_ sender: Any) {
        if re == 1{
            display.text = "7"
        }
        else{
            display.text = display.text!+"7"
        }
    }
    
    @IBAction func eight(_ sender: Any) {
        if re == 1{
            display.text = "8"
        }
        else{
            display.text = display.text!+"8"
        }
    }
    
    @IBAction func nine(_ sender: Any) {
        if re == 1{
            display.text = "9"
        }
        else{
            display.text = display.text!+"9"
        }
    }
    
    @IBAction func add(_ sender: Any) {
        //display.text = "+"
        if add == 1{
            let a = Double(result)!
            let b = Double(display.text!)!
            let c = a + b
            result = String(c)
            display.text = ""
            number = 1
            re = 1
            judge = 0
        }
        else{
            if display.text ==  ""{
                display.text = ""
            }//判断字符串是否为空，如果为空，使其变为0；空字符串时，导致程序闪退
            else{
                add = 1
                let x = Double(display.text!)!
                result = String(x)
                display.text = ""
                number = 1
                re = 0
                judge = 0
            }
        }
        
    }
    
    @IBAction func zero(_ sender: Any) {
        if re == 1{
            display.text = "0"
        }
        else{
            display.text = display.text!+"0"
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        judge = 0
        if add == 1{
            let a = Double(result)!
            let b = Double(display.text!)!
            let c = a - b
            result = String(c)
            display.text = ""
            number = 2
            re = 1
            }
        else{
            if display.text ==  ""{
                display.text = ""
            }
            else{
                add = 1
                let x = Double(display.text!)!
                result = String(x)
                display.text = ""
                number = 2
                re = 0
            }
        }
    }
    
    
    @IBAction func multiply(_ sender: Any) {
        judge = 0
        if add == 1{
            let a = Double(result)!
            let b = Double(display.text!)!
            let c = a * b
            result = String(c)
            display.text = ""
            number = 3
            re = 1
            judge = 0
        }
        else{
            if display.text ==  ""{
                display.text = ""
            }
            else{
                add = 1
                let x = Double(display.text!)!
                result = String(x)
                display.text = ""
                number = 3
                re = 0
            }
        }
    }
    
    @IBAction func divide(_ sender: Any) {
        judge = 0
        if add == 1{
           
            let a = Double(result)!
            let b = Double(display.text!)!
            let c = a / b
            result = String(c)
            display.text = ""
            number = 4
            re = 1
        }
        else{
            if display.text ==  ""{
                display.text = ""
            }
            else{
                add = 1
                let x = Double(display.text!)!
                result = String(x)
                display.text = ""
                number = 4
                re = 0
            }
        }
    }
    
    @IBAction func equal(_ sender: Any) {
        let a = Double(result)!
        let b = Double(display.text!)!
        if number == 1 {
            let c = a + b
            display.text = String(c)
        }
        else if number == 2 {
            let c = a - b
            display.text = String(c)
        }
        else if number == 3 {
            let c = a * b
            display.text = String(c)
        }
        else if number == 4 {
            let c = a / (b)
            display.text = String(c)
        }
        if b == 0 && number == 4{
            display.text = "错误"
        }
        re = 1
        judge = 0
        add = 0
    
    }
    
    
    @IBAction func dot(_ sender: Any) {
        
        if judge == 0 {
          display.text = display.text! + "."
        }
        judge = 1
    }
    
    @IBAction func percent(_ sender: Any) {
        let count = Double(display.text!)!
        let count2 = count * 0.01
        display.text = String(count2)
        re = 0
         judge = 0
    }
    
    @IBAction func sign(_ sender: Any) {
        let count = Double(display.text!)!
        let count2 = -count
        display.text = String(count2)
        re = 0
         judge = 0
    }
    
    @IBAction func ac(_ sender: Any) {
        display.text = ""
        re = 0
        add = 0
        judge = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

