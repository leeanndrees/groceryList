//
//  ViewController.swift
//  GroceryList
//
//  Created by DetroitLabs on 8/31/18.
//  Copyright © 2018 DetroitLabs. All rights reserved.
//

import UIKit

class GroceryListViewController: UITableViewController {
    
    struct GroceryItem {
        var name: String
        var quantity: Int
    }
    
    var groceryItems = [
        GroceryItem(name: "Milk", quantity: 1),
        GroceryItem(name: "Cat food", quantity: 3),
        GroceryItem(name: "Yogurt", quantity: 2),
        GroceryItem(name: "Small zucchini", quantity: 2),
        GroceryItem(name: "Head of garlic", quantity: 3)
    ]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceryItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroceryListItem")
        
        cell?.textLabel?.text = "\(groceryItems[indexPath.row].name), \(groceryItems[indexPath.row].quantity)"
        
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
            } else {
                cell.accessoryType = .none
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.groceryItems.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .middle)
        }
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

