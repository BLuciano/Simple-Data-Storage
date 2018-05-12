//
//  ViewController.swift
//  Data Storage
//
//  Created by Luciano Bruzzoni on 5/9/18.
//  Copyright © 2018 Luciano Bruzzoni. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var userInput: UITextField!
    var displayNum = UserDefaults.standard.object(forKey: "telephone")
    
    @IBAction func changeNumber(_ sender: Any) {
        if let userNum = Int(userInput.text!){
            UserDefaults.standard.set(userNum, forKey: "telephone")
       // displayNum = UserDefaults.standard.object(forKey: "telephone")
         //   if let telephone = displayNum as? String {
                 message.text = "Your number is \(userNum)"
           // }
        } else {
            message.text = "Please enter a whole number"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let telephone = displayNum as? Int{
            message.text = "Your number is \(telephone)"
        } else {
            message.text = "Please enter your phone numner"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

