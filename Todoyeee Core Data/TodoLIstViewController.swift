//
//  ViewController.swift
//  Todoyeee Core Data
//
//  Created by Dhawal Mahajan on 08/03/19.
//  Copyright © 2019 Dhawal Mahajan. All rights reserved.
//

import UIKit

class TodoLIstViewController: UITableViewController {

     let cellID = "ToDoItemCell"
    
    let itemArray = ["Apple", "Guava", "Banana"]
    override func viewDidLoad() {
        super.viewDidLoad()
//        tableView.reloadData()
        // Do any additional s etup after loading the view, typically from a nib.
    }

    //MARK: Tableview datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    
    //MARK: Tableview delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        if let cell = tableView.cellForRow(at: indexPath) {
            
            if cell.accessoryType == .checkmark {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
            if let text = cell.textLabel?.text {
                print("\(text)")
            }
        }
    }

}

