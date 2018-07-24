//
//  ViewController.swift
//  computerPractice
//
//  Created by Al.C on 2018/7/24.
//  Copyright © 2018 Al.C. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flag = false
    
    let firstNumber: Double = 0
    
    var secondNumber: Double?
    
    var finalNumber: Double?
    
    
    
    @IBOutlet var Label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        let inPutNumbers = sender.tag
        if Label.text != nil {
            if Label.text == "0" {
                Label.text = "\(inPutNumbers)"
            } else {
                Label.text = Label.text! + "\(inPutNumbers)"
            }
        }
        
    }
    
    @IBAction func point(_ sender: UIButton) {
        if flag == false {
            Label.text = Label.text! + "."
            flag = true
        }
    }

    @IBAction func plus(_ sender: UIButton) {
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func ACButton(_ sender: UIButton) {
        Label.text = "0"
        flag = false
    }
    
    func plusFunc(firstNumber: Double, secondNumber: Double) ->Double {
        var finalNumber: Double = 0
        finalNumber = firstNumber + secondNumber
        firstNumber = finalNumber
        return finalNumber
        
    }
    
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

