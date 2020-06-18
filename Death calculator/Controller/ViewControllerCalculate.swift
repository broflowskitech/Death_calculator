//
//  ViewControllerCalculate.swift
//  Death calculator
//
//  Created by Jan B on 05/05/2020.
//  Copyright © 2020 broflowski. All rights reserved.
//

import UIKit

class ViewControllerCalculate: UIViewController {

    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var illnessLabel: UILabel!
    @IBOutlet weak var ageSlider: UISlider!
    @IBOutlet weak var illnessSlider: UISlider!
    @IBOutlet weak var calculateButton: UIButton!
    
    var deathCalculator = DeathCalculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculateButton.layer.cornerRadius = 5
    }

    @IBAction func ageSlider(_ sender: UISlider) {
        ageLabel.text =  String(format: "%.0f", sender.value)
    }
    
    @IBAction func illnessSlider(_ sender: UISlider) {
        illnessLabel.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let age = ageSlider.value
        let illness = illnessSlider.value
        deathCalculator.calculateDeath(age: Int(age), illness: Int(illness))
        self.performSegue(withIdentifier: "toResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResult"
        {
            let destinationViewController = segue.destination as! ViewControllerResult
            destinationViewController.yearsToDeath = deathCalculator.getDeathYear()
            destinationViewController.message = deathCalculator.getMessage()
            destinationViewController.color = deathCalculator.getColor()
            
        }
    }
    
}


