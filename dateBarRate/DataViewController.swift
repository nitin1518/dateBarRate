//
//  DataViewController.swift
//  
//
//  Created by Nitin Sharma on 03/03/15.
//  Copyright (c) 2015 Nitin Sharma. All rights reserved.
//

import UIKit

class DataViewController: UIViewController {

    var qMatrix = [[String]]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        qMatrix = [
            ["2","3","2","2","3","0", "4"],
            ["4","3","2","3","2","2", "4"],
            ["4","2","1","2","5","3", "5"],
            ["1","2","4","6","3","3", "6"],
            ["5","3","4","2","4","6", "6"],
            ["1","1","5","6","1","2", "7"],
            ["5","3","4","2","5","6", "6"]]
        
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
           }
    

}
