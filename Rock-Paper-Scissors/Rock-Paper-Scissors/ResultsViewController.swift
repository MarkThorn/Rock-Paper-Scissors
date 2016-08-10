//
//  ResultsViewController.swift
//  Rock-Paper-Scissors
//
//  Created by Mark Thorn on 8/10/16.
//  Copyright © 2016 Mark Thorn. All rights reserved.
//

import Foundation
import UIKit



class ResultsViewController: UIViewController {
    
    var res: String?
    
    @IBOutlet var LabelResults: UILabel!
    

    override func viewWillAppear(animated: Bool) {
        LabelResults.text = res
    }
    
}