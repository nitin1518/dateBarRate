//
//  ViewController.swift
//  
//
//  Created by Nitin Sharma on 18/02/15.
//  Copyright (c) 2015 Nitin Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var quantityMatrix = [[String]]() // This is my new value generated 
    
  
    @IBOutlet weak var quantityLabel: UILabel!
    @IBOutlet weak var weekLabel: UILabel!
    
    var qMatrix = QuantityMatrix()
    var myBarDay: String = NSString()
    var myWeekday = NSString()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        if let weekday = getDayOfWeek("03-04-2015") {
            println(weekday)
            weekLabel.text! = "\(weekday)"
            let myBarDay = "r"

            var myString = String(weekday)
            var quantity = myBarDay + myString
            println(quantity)
            var mylabel = qMatrix["\(quantity)"]!
            quantityLabel.text! = "\(mylabel)"
            println ("\(mylabel)")
    
        } else {
            println("bad input")
        }
        
//====================   rateMatrix["r7"]!
        
    
        // Do any additional setup after loading the view.
    }
    
    
    func getDayOfWeek(today:String)->Int? {
        
        let formatter  = NSDateFormatter()
        formatter.dateFormat = "MM-dd-yyyy"
        if let todayDate = formatter.dateFromString(today) {
            let myCalendar = NSCalendar(calendarIdentifier: NSGregorianCalendar)
            let myComponents = NSCalendar.currentCalendar().components(NSCalendarUnit.CalendarUnitWeekday, fromDate: todayDate).weekday
            // let weekDay = myComponents.weekday
            return myComponents
        } else {
            return nil
        }
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

