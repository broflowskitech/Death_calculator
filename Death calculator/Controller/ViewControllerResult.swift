//
//  ViewControllerResult.swift
//  Death calculator
//
//  Created by Jan B on 05/05/2020.
//  Copyright © 2020 broflowski. All rights reserved.
//

import UIKit

class ViewControllerResult: UIViewController {

    var yearsToDeath: String?
    var message: String?
    var color: UIColor?
    
    @IBOutlet weak var yearsResultLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var recalculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recalculateButton.layer.cornerRadius = 5

        yearsResultLabel.text = yearsToDeath
        messageLabel.text = message
        view.backgroundColor = color
    }

    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
