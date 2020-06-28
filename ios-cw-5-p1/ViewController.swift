//
//  ViewController.swift
//  ios-cw-5-p1
//
//  Created by بدرية موسى العجمي on 6/27/20.
//  Copyright © 2020 Moon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gradeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var gradeField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signedButton(_ sender: UIButton) {
        nameLabel.text = nameField.text
        gradeLabel.text = gradeField.text
    }
    
}

