//
//  DiceViewController.swift
//  ViewControllerPractice
//
//  Created by IACD-011 on 2022/05/05.
//

import UIKit

class DiceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Dice"
        // Do any additional setup after loading the view.
        for  x in diceImages {
            dice.append(UIImage(named: x)!)
        }
        // Do any additional setup after loading the view.
        diceView1.image = UIImage(named: "dice2")
        diceView2.image = UIImage(named: "dice5")
    }
    
    let diceImages = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    var dice = [UIImage]()
    
    @IBOutlet weak var diceView1: UIImageView!
    
    @IBOutlet weak var diceView2: UIImageView!
    
    @IBOutlet weak var total: UILabel!
    
    
    @IBAction func rollDice(_ sender: Any) {
        
        var randomRoll = Int.random(in: 1..<7);
        var diceName:String = "dice";
        
        diceName.append(String(randomRoll));
        diceView1.image = UIImage(named: diceName);
        
        var rollTotal = randomRoll;
        randomRoll = Int.random(in: 1..<7);
        rollTotal += randomRoll;
        diceName = "dice";
        
        diceName.append(String(randomRoll));
        diceView2.image = UIImage(named: diceName);
        
   //     diceView1.image = UIImage(named: diceImages[Int.random(in: 0..<6)])
   //     diceView2.image = UIImage(named: diceImages[Int.random(in: 0..<6)])
        animate()
        
        //diceView1.image = UIImage(named: diceImages.randomElement()!)
        
        //diceView2.image = UIImage(named: diceImages.randomElement()!)
        total.text = "Total: " + String(rollTotal);
        
    }
    
    func animate() {
        diceView1.animationImages = dice
        diceView1.animationDuration = 2
        diceView1.animationRepeatCount = 1
        diceView1.startAnimating()
        
        diceView2.animationImages = dice
        diceView2.animationDuration = 1.5
        diceView2.animationRepeatCount = 1
        diceView2.startAnimating()
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
