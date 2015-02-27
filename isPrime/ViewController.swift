//
//  ViewController.swift
//  isPrime
//
//  Created by HoodsDream on 2/26/15.
//  Copyright (c) 2015 HoodsDream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var number: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        var numberInt = number.text.toInt()
        
        if numberInt != nil {
            
            var unwrappedNumber = numberInt!
            
            var isPrime = true
            
            if unwrappedNumber == 1 {
                isPrime = false
            }
            
            if unwrappedNumber != 1 && unwrappedNumber != 2 {
                for var i = 2; i < unwrappedNumber; i++ {
                    if unwrappedNumber % i == 0 {
                        isPrime = false
                    }
                }
            }
            
            if isPrime == true {
                resultLabel.text = "\(unwrappedNumber) is a prime number!"
            } else {
                resultLabel.text = "\(unwrappedNumber) is not a prime number!"
            }
            
        } else {
            resultLabel.text = "Please enter a number"
            
        }
        
    }
    
    
       override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

