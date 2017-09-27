//
//  TableViewController.swift
//  SearchBar in TableView
//
//  Created by Martin Vacas on 27/9/17.
//  Copyright © 2017 Martin Vacas. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController, UISearchResultsUpdating {

    var array = ["One","Two","Three","Four","Five","Six"]
    var filteredArray = [String]()
    var searchController = UISearchController()
    var resultController = UITableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchController = UISearchController(searchResultsController: resultController)
        tableView.tableHeaderView = searchController.searchBar
        
        searchController.searchResultsUpdater = self
        
        resultController.tableView.delegate = self
        resultController.tableView.dataSource = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == resultController.tableView {
            return filteredArray.count
        } else {
            return array.count
        }
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        if tableView == resultController.tableView {
            cell.textLabel?.text = filteredArray[indexPath.row]
        } else {
            cell.textLabel?.text = array[indexPath.row]
        }
        
        return cell
    }

    func updateSearchResults(for searchController: UISearchController) {
        filteredArray = array.filter({ (array:String) -> Bool in
            if array.contains(searchController.searchBar.text!) {
                return true
            } else {
                return false
            }
        })
        
        resultController.tableView.reloadData()
    }

}
