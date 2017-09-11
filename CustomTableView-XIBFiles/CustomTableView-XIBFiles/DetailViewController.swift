//
//  DetailViewController.swift
//  CustomTableView-XIBFiles
//
//  Created by Martin Vacas on 11/9/17.
//  Copyright © 2017 Martin Vacas. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var imageDetail: UIImageView!
    var imageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = imageName {
            imageDetail.image = UIImage(named: name)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func commonInit(_ imageName: String) {
        self.imageName = imageName
    }
    

}
