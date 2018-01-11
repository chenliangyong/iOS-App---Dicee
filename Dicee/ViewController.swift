//
//  ViewController.swift
//  Dicee
//
//  Created by Liangyong Chen on 2018/1/10.
//  Copyright © 2018年 Liangyong Chen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var imageView2: UIImageView!
    
    // Create 2 variable for random number
    var randomDiceidx1: Int = 0
    var randomDiceidx2: Int = 0
    
    let diceArray=["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeDice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
  
    @IBAction func rollButtonPressed(_ sender: UIButton) {
       changeDice()
        
        
    }
    
    func changeDice(){
        //generate random Integer (0-5) number
        randomDiceidx1=Int(arc4random_uniform(6))
        randomDiceidx2=Int(arc4random_uniform(6))
        //print(randomDiceidx1 , randomDiceidx2)
        imageView1.image = UIImage(named: diceArray[randomDiceidx1])
        imageView2.image = UIImage(named: diceArray[randomDiceidx2])
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeDice()
    }
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeDice()

    
    }

}

