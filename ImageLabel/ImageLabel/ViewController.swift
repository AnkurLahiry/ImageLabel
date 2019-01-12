//
//  ViewController.swift
//  ImageLabel
//
//  Created by ankur.lahiry on 12/1/19.
//  Copyright © 2019 ankur.lahiry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "Hi there!"
        label.addImageWith(name: "settings", behindText: false)
    }

}

