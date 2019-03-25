//
//  ViewController.swift
//  Todoist
//
//  Created by Bionic Technology Group on 3/24/19.
//  Copyright © 2019 Rafael Sanchez. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
 
    //----------------------------------------------------------------------------------------
    //MARK: - Variable Declarations & IBOutlets/IBActions
    
    
    var itemArray = ["Find Mike", "Buy Eggos", "Destroy Demogorgon"]
    
   
    
    
    
    
      //----------------------------------------------------------------------------------------
    //MARK: -
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    //----------------------------------------------------------------------------------------
    //MARK:  - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
    
    //MARK: TableView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add New Item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add", style: .default) {
            (alertAction) in

            self.itemArray.append(textField.text!)
            self.tableView.reloadData()

        }

        alert.addAction(action)
        alert.addTextField {
            (alertTextField) in
            alertTextField.placeholder = "Add new item here"
            textField = alertTextField
        }
        
        present(alert, animated: true, completion: nil)
        
    }
    
}

