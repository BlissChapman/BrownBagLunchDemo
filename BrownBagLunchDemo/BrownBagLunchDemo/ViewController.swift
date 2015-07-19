//
//  ViewController.swift
//  BrownBagLunchDemo
//
//  Created by Bliss Chapman on 7/18/15.
//  Copyright (c) 2015 Bliss Chapman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redSliderLabel: UILabel!
    @IBOutlet weak var greenSliderLabel: UILabel!
    @IBOutlet weak var blueSliderLabel: UILabel!

    @IBOutlet weak var roosterLabel: UILabel!
    @IBOutlet weak var rooster: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1.0)
        redSliderLabel.text = "Red: \(redSlider.value)"
        greenSliderLabel.text = "Green: \(greenSlider.value)"
        blueSliderLabel.text = "Blue: \(blueSlider.value)"
    }
    
    @IBAction func sliderValueChanged(sender: UISlider) {
        view.backgroundColor = UIColor(red: CGFloat(redSlider.value)/255, green: CGFloat(greenSlider.value)/255, blue: CGFloat(blueSlider.value)/255, alpha: 1.0)
        
        redSliderLabel.text = "Red: \(redSlider.value)"
        greenSliderLabel.text = "Green: \(greenSlider.value)"
        blueSliderLabel.text = "Blue: \(blueSlider.value)"
        
        if redSlider.value == 255.0 && greenSlider.value == 0.0 && blueSlider.value == 0.0 {
            toggleRooster(true)
        } else {
            toggleRooster(false)
        }
    }
    
    func toggleRooster(visible: Bool) {
        rooster.hidden = !visible
        roosterLabel.hidden = !visible
    }
}

