//
//  ViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalListViewController: UITableViewController {
    
    var animalList:[String] = [
        "Dog",
        "Cat",
        "Mouse",
        "Hamster",
        "Bunny",
        "Panda",
        "Lion",
        "Pig",
        "Frog",
        "Octopus"]
    
    var animalEmojis: [String] = [
        "🐕",
        "🐈",
        "🐁",
        "🐹",
        "🐇",
        "🐼",
        "🦁",
        "🐷",
        "🐸",
        "🐙"]
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return animalList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "AnimalCell", for: indexPath)
        cell.textLabel?.text = String(animalList[indexPath.row])
        return cell

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "AnimalDetailView" {
            if let destination = segue.destination as? AnimalViewController {
                if let indexPath = tableView.indexPathForSelectedRow {
                    destination.label = animalList[indexPath.row]
                    destination.emoji = animalEmojis[indexPath.row]
                }
            }
        }
    }
    
    
//    func animalNameToEmoji() -> String {
//        
//        for animal in animalList{
//            for emoji in animalEmojis {
//                
//                
//            }
//        }
    
}

