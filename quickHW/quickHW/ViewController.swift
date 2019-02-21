//
//  ViewController.swift
//  quickHW
//
//  Created by Doug Miller on 1/17/19.
//  Copyright © 2019 CUBiC digital. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    let worldArray = ["Hello World!",  "Hello Wêreld!", "🖐 🌏",  "¡Hola Mundo!", "🖐 🌏",  "Ciao mondo!", "🖐 🌏", "Bonjour le monde!", "Hallo Welt!", "你好，世界",  "Γειά σου Κόσμε!", "העלא וועלט!"]
    let rotateArray = [0.0, 0.0, 0.0, 0.5, 0.375, 0.25, 0.125]
    let fontArray = ["Helvetica", "Didot"]
    
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var HW: UILabel!
    var randomHello = 0
    var randomRotate = 0
    
    @IBAction func HWBtn(_ sender: UIButton) {
        //first loop
        if HW.alpha == 0.0{
        UILabel.animate(withDuration: 0.3, delay: 0.05, options: .curveEaseIn, animations: {self.HW.alpha = 1.0})
            helloWorldText()
            HW.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: 1 ... 100)))
            button.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: 1 ... 100)))
        }
        
        else if HW.alpha == 1.0 {
        HW.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: 1 ... 100)))
        UILabel.animate(withDuration: 0.3, delay: 0.05, options: .curveEaseOut, animations: {self.HW.alpha = 0.0})
//        UILabel.animate(withDuration: 0.3, delay: 0.05, options: .curveEaseOut, animations: {self.button.alpha = 0.0})
                helloWorldText()
        UILabel.animate(withDuration: 0.3, delay: 0.05, options: .curveEaseIn, animations: {self.HW.alpha = 1.0})
//        UILabel.animate(withDuration: 0.3, delay: 0.05, options: .curveEaseIn, animations: {self.button.alpha = 1.0})
        button.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: 1 ... 100)))
            
            }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        HW.layer.masksToBounds = true
        HW.layer.cornerRadius = 172.0
        self.HW.alpha = 0.0
        self.button.alpha = 0.0
        button.layer.cornerRadius = 75
        
        UILabel.animate(withDuration: 0.3, delay: 1.0, options: .curveEaseIn, animations: {self.button.alpha = 1.0})
        //button.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: 1 ... 100)))
        UILabel.animate(withDuration: 0.3, delay: 1.0, options: .curveEaseIn, animations: {self.HW.alpha = 1.0})
        
    }
    

    func helloWorldText() {
        randomHello = Int.random(in: 0 ... 9)
        randomRotate = Int.random(in: 0 ... 7)
        self.HW.text = worldArray[randomHello]
    }
    

    
}

