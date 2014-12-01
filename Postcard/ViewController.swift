//
//  ViewController.swift
//  Postcard
//
//  Created by Clive Goransson on 28/11/2014.
//  Copyright (c) 2014 Clive Goransson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblMessage: UILabel!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfMessage: UITextField!
    @IBOutlet weak var btnSendMail: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnSendMail_TouchUpInside(sender: UIButton) {
        // Adding a comment here to test commits
        lblMessage.hidden = false
        lblMessage.text = tfMessage.text
        lblMessage.textColor = UIColor.redColor()
        
        tfMessage.text = ""
        tfMessage.resignFirstResponder()
        
        btnSendMail.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
}

