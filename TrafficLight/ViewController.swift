//
//  ViewController.swift
//  TrafficLight
//
//  Created by macbook on 24/07/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    @IBOutlet weak var switchButton: UIButton!
    
    var activeColor = ""
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.backgroundColor = .red
        redLight.alpha = 0.3
        
        yellowLight.backgroundColor = .yellow
        yellowLight.alpha = 0.3
        
        greenLight.backgroundColor = .green
        greenLight.alpha = 0.3
    }
    
    @IBAction func switchLightButton(_ sender: Any) {
        switch activeColor {
        case "Red":
            activeColor = "Yellow"
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        
        case "Yellow":
            activeColor = "Green"
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        
        case "Green":
            activeColor = "Red"
            greenLight.alpha = 0.3
            redLight.alpha = 1
        
        default:
            activeColor = "Red"
            redLight.alpha = 1
            switchButton.setTitle("NEXT", for: .normal)
        }
    }
    
}

