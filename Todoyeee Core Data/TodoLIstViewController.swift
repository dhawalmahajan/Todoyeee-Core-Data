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
    
    var itemArray = ["Apple", "Guava", "Banana"]
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
        
        
            
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            }

        tableView.deselectRow(at: indexPath, animated: true)

    }
    
    //MARK: Add new Items
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textfield = UITextField()
        let alert = UIAlertController(title: "Add new todoyee Item", message: "", preferredStyle: .alert)
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
            self.itemArray.append(textfield.text!)
            self.tableView.reloadData()
            print("Success")
        }
        alert.addTextField { (alertTextfield) in
            alertTextfield.placeholder = "Create New Item"
            textfield = alertTextfield
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}

