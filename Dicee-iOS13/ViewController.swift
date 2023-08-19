//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //conetected buttonStoryBoard
       
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var diceImageView4: UIImageView!
    
    var leftDiceNumber = 1
    var rightDiceNumber = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       //who          //that    //value
        diceImageView2.image = UIImage(named: "DiceSix")
        diceImageView1.image = UIImage(named: "DiceTwo")
        diceImageView3.image = UIImage(named: "DiceFive")
        diceImageView4.image = UIImage(named: "DiceThree")
        
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        diceImageView1.image = [ UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName:"DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive")] [leftDiceNumber]
        diceImageView2.image = [ UIImage(imageLiteralResourceName: "DiceSix"), UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName:"DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive")] [rightDiceNumber]
        
        leftDiceNumber = leftDiceNumber + 1
        rightDiceNumber = rightDiceNumber - 1
    }
    
}

