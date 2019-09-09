//
//  ToDoListViewController.swift
//  Todo
//
//  Created by Charmi Sutariya on 09/09/19.
//  Copyright © 2019 Charmi Sutariya. All rights reserved.
//


import UIKit

class ToDoListViewController : UITableViewController {
    
    let itemArray = ["Shopping", "Movies", "Food", "Travel"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //MARK: TableView Data Source Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        
        return cell
    }
    
    
    //MARK: TabelView Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        if let cell = tableView.cellForRow(at: indexPath) {
            if cell.accessoryType == .checkmark {
                cell.accessoryType = .none
            } else {
                cell.accessoryType = .checkmark
            }
        }
        //tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
   
    
}
