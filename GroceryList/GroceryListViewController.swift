//
//  ViewController.swift
//  GroceryList
//
//  Created by DetroitLabs on 8/31/18.
//  Copyright © 2018 DetroitLabs. All rights reserved.
//

import UIKit

class GroceryListViewController: UITableViewController {
    
    let groceryItems = ["pasta", "chocolate"]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroceryListItem")
        
        cell?.textLabel?.text = groceryItems[indexPath.row]
        
        return cell!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

