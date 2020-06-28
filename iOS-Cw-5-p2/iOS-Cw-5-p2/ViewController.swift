//
//  ViewController.swift
//  iOS-Cw-5-p2
//
//  Created by بدرية موسى العجمي on 6/27/20.
//  Copyright © 2020 Moon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    
    @IBOutlet weak var turnLabel: UILabel!
    
    var buttons: [UIButton] = []
     var counter = 0
    
    override func viewDidLoad() {
        print("hi")
        buttons = [b1, b2, b3, b4, b5, b6, b7, b8, b9]
    }
    
    @IBAction func press(_ sender: UIButton)
    {
        if counter % 2 == 0{
            sender.setTitle("X", for: .normal)
            sender.setTitleColor(.red, for: .normal)
            turnLabel.text = "o turn"
        }
        else{
           
            sender.setTitle("o", for: .normal)
            sender.setTitleColor(.yellow, for: .normal)
            turnLabel.text = "X turn"
        }
        counter += 1
        sender.isUserInteractionEnabled = false
        
    Winning(winner: "X")
    Winning(winner: "O")
     }
    
    @IBAction func resetTapped() {
        restartGame()
    }
    
    func Winning(winner:String){
        if (b1.titleLabel?.text == winner && b2.titleLabel?.text == winner && b3.titleLabel?.text == winner) ||
            (b4.titleLabel?.text == winner && b5.titleLabel?.text == winner && b6.titleLabel?.text == winner) ||
            (b7.titleLabel?.text == winner && b8.titleLabel?.text == winner && b9.titleLabel?.text == winner) ||
            (b2.titleLabel?.text == winner && b5.titleLabel?.text == winner && b8.titleLabel?.text == winner) ||
            (b1.titleLabel?.text == winner && b4.titleLabel?.text == winner && b7.titleLabel?.text == winner) ||
            (b3.titleLabel?.text == winner && b6.titleLabel?.text == winner && b9.titleLabel?.text == winner) ||
            (b1.titleLabel?.text == winner && b5.titleLabel?.text == winner && b9.titleLabel?.text == winner) ||
            (b3.titleLabel?.text == winner && b5.titleLabel?.text == winner && b7.titleLabel?.text == winner)
        {
        print("\(winner)is the winner")
        let alertController = UIAlertController(title:"\(winner) congrats my bro u won yaaaay 🎉😍" , message: "قم بالضفط على زر reset من اجل اعاده اللعب", preferredStyle: .alert )
        let restartAction = UIAlertAction(title: "إعاده اللعب", style: .cancel, handler: nil)
        alertController.addAction(restartAction)
        present(alertController, animated: true, completion: nil)
        }
        
    }
    func restartGame()
    {
        for b in buttons
        {
            b.setTitle("", for: .normal)
            b.titleLabel?.text = ""
            b.isUserInteractionEnabled = true
        }
        counter = 0
        turnLabel.text = "X Turn"
    }
}
