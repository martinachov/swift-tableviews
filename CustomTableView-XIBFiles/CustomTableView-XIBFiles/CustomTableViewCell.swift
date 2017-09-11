//
//  CustomTableViewCell.swift
//  CustomTableView-XIBFiles
//
//  Created by Martin Vacas on 8/9/17.
//  Copyright © 2017 Martin Vacas. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    //Se declara el delegado que va a controlar el evento de clik en el XIB de la celda
    var tableViewDelegate: CustomTableViewController?
    
    @IBOutlet var imageCell: UIImageView!

    @IBOutlet var labelCell: UILabel!
    
    var index: IndexPath!
    
    @IBAction func btnDetalle(_ sender: UIButton) {
        print("Presionando desde XIB")
        tableViewDelegate?.detaillOfCell(atIndex: index)
    }
    

}
