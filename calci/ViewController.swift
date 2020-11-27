//
//  ViewController.swift
//  calci
//
//  Created by Vipula Bhalla on 11/11/2020.
//  Copyright © 2020 Vipula Bhalla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

        var number: Double = 0;
        var previousNumber: Double = 0;
        var performingMath = false
        var operation = 0;
        
        
        @IBOutlet weak var label: UILabel!
        
        
        
        
        @IBAction func numbers(_ sender: UIButton) {
            
            if performingMath == true{
                label.text =  String(sender.tag-1)
                number = Double(label.text!)!
                performingMath = false
            }
            else{
                label.text = label.text! + String(sender.tag-1)
                number = Double(label.text!)!
                
            }    }
        
        
        @IBAction func buttons(_ sender: UIButton) {
            
            if label.text != "" && sender.tag != 12 && sender.tag != 19 {
                previousNumber = Double(label.text!)!
                
                if sender.tag == 13 {
                    label.text = "+"
                }
                    
                else if sender.tag == 14 {
                    label.text = "-"
                    
                }
                    
                else if sender.tag == 15 {
                    label.text = "*"
                    
                }
                    
                else if sender.tag == 16 {
                    label.text = "/"
                    
                }
                    
                else if sender.tag == 17 {
                    label.text = "%"
                    
                }
                
                else if sender.tag == 11 {
                    label.text = "."
                    
                }
                operation = sender.tag
                performingMath = true
                
            }
                
            else if sender.tag == 12 {
                
                if operation == 13{
                    label.text = String(previousNumber + number)
                }
                else if operation == 14 {
                    label.text = String(previousNumber - number)
                }
                else if operation == 15 {
                    label.text = String(previousNumber * number)
                }
                else if operation == 16 {
                    label.text = String(previousNumber / number)
                }
                else if operation == 17 {
                    label.text = String(Int(previousNumber) % Int(number))
                }
                
            }
            else if sender.tag == 19 {
                label.text = ""
                previousNumber = 0;
                number = 0;
                operation = 0;
            }
            
        }
    
    
    
    @IBAction func dot(_ sender: UIButton) {
        
        var decimal: Bool = false
        if sender.tag == 11 && !decimal{
            decimal = true
            label.text = label.text! + "."
            
            
            
        }
    
    
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

