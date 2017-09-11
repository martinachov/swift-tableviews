//
//  CustomTableViewController.swift
//  CustomTableView-XIBFiles
//
//  Created by Martin Vacas on 7/9/17.
//  Copyright © 2017 Martin Vacas. All rights reserved.
//

import UIKit

class CustomTableViewController: UITableViewController {

    
    @IBOutlet var myTableView: UITableView!
    let marcas = ["Audi", "Ferrari", "BMW", "Porsche"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Register NIB Object
        let nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        myTableView.register( nib, forCellReuseIdentifier: "CustomTableViewCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return marcas.count
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Configure the cell...
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        let marca = marcas[indexPath.row]
        cell.labelCell.text = marca
        cell.imageCell.image = UIImage(named: marca)
        cell.tableViewDelegate = self
        cell.index = indexPath
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
  
    //Llamado desde la celda 
    func detaillOfCell(atIndex index: IndexPath) {
        let name = marcas[index.row] + "Detail"
        let cellVC = DetailViewController()
        cellVC.commonInit(name)
        self.navigationController?.pushViewController(cellVC, animated: true)
        self.myTableView.deselectRow(at: index, animated: true)
        
    }




}
