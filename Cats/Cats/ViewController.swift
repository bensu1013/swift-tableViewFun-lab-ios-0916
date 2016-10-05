//
//  ViewController.swift
//  Cats
//
//  Created by Michael Dippery on 7/16/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var catsInBox: [String] = []
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        catsInBox = [
            "Tom",
            "Jerry",
            "Greg",
            "Stanley",
            "Robert",
            "St. Augusta VI",
            "Stray",
            "Tigris",
            "Lionette",
            "Pinto Bean"
        ]
    }
    
   
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return catsInBox.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "KittyCell", for: indexPath)
        cell.textLabel?.text = catsInBox[indexPath.row]
        
        return cell
    }
    
}
