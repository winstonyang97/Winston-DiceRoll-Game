//
//  ViewController.swift
//  DiceRoll
//
//  Created by Winston Yang on 2023-08-30.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    

    
    // hold control button and drag image to a line in the code to create a IBOutlet. Then the code line back to the image to secure the connection
    // When i want to change an image from only the code, I use (Who.What = Value)
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceImageView1.image = UIImage(named: "DiceOne")
        diceImageView2.image = UIImage(named: "DiceOne")
        
    }
    
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        print("hello1")
        
        
        // dice array is a variable which allows us to replace all the images into one variable. Now we only need to change the variable to update the rest of the code.
        let diceArray = [UIImage(named:"DiceOne"),UIImage(named:"DiceTwo"),UIImage(named:"DiceThree"),UIImage(named:"DiceFour"),UIImage(named:"DiceFive"),UIImage(named:"DiceSix")]
        
        diceImageView1.image = diceArray[Int.random(in: 0...5)]
        
        
        diceImageView2.image = diceArray[Int.random(in: 0...5)]
        
    }
    


}

