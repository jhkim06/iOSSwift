//
//  ViewController.swift
//  HelloWorld
//
//  Created by Junho Kim on 2020/08/09.
//  Copyright © 2020 Junho Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lb1Hello: UILabel!
    @IBOutlet var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        lb1Hello.text = "Hello, " + txtName.text!
    }
    
}

