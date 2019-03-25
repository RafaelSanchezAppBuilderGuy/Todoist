//
//  ViewController.swift
//  Todoist
//
//  Created by Bionic Technology Group on 3/24/19.
//  Copyright © 2019 Rafael Sanchez. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    //MARK: -
    //MARK: Variable Declarations & IBOutlets/IBActions
    //----------------------------------------------------------------------------------------
    
    let itemArray = ["Find Mike", "Buy Eggos", "Destroy Demogorgon"]
    
   
    
    
    
    
    
    //MARK: -
    
    //----------------------------------------------------------------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    //MARK: Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return itemArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        
        return cell
        
    }
    
    
    
    
    
    
}

