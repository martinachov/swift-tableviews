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
        myTableView.register( UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
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

        return cell
    }
 



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
