//
//  ViewController.swift
//  post card
//
//  Created by Imagination Overdrive, Inc. on 9/13/14.
//  Copyright (c) 2014 Imagination Overdrive, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
    messageLabel.hidden = false
    messageLabel.text = enterMessageTextField.text
    enterMessageTextField.text = ""
    enterMessageTextField.resignFirstResponder()
    messageLabel.textColor = UIColor.redColor()
    mailButton.setTitle("mail sent", forState: UIControlState.Normal)       
    }

}

