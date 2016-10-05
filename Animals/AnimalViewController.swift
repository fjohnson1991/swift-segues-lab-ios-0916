//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    @IBOutlet weak var animalEmoji: UILabel!
    @IBOutlet weak var animalLabel: UILabel!
    
    var emoji = ""
    var label = ""
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        animalLabel.text = label
        animalEmoji.text = emoji
        self.navigationItem.title = label
        
    }
    
}
