//
//  QuantityMatrix.swift
//  dateBarRate
//
//  Created by Nitin Sharma on 18/02/15.
//  Copyright (c) 2015 Nitin Sharma. All rights reserved.
//

import UIKit


class QuantityMatrix {
    
        var qMatrix:[[String]] = [
        ["20","30","20","20","40","60", "54"],
        ["40","30","20","30","25","52", "34"],
        ["45","20","10","20","45","33", "65"],
        ["10","20","45","66","43","23", "6"],
        ["56","35","43","23","54","76", "66"],
        
        ["15","12","5","62","13","2", "7"],
        ["56","35","43","23","54","76", "66"]]
    
    //    let rows: Dictionary<String, Int> =
    //  ["a":0,"b":1,"c":2,"d":3,"e":4, "f":5, "g":6]
    let rows: Dictionary<String, Int> =
    ["b":0,"r":1,"m":2,"l":3,"s":4, "c":5, "o":6]
    
    let columns: Dictionary<String, Int> =
    ["1":0,"2":1,"3":2,"4":3,"5":4,"6":5, "7":6]
    
    
    
    // Retrieves piece on the specified square (e.g. C7)
    subscript(square: String) -> String? {
        
        get {
            var rate: String? = nil
            
            // Make sure there are two characters
            if countElements(square) == 2
            {
                // Convert to lowercase
                let sq = square.lowercaseString
                
                // Get the row character
                let index = advance(sq.startIndex, 1)
                var rowChar = sq.substringToIndex(index)
                
                // Convert row character to a row number
                if let rowNumber = rows[rowChar]
                {
                    // Get the column character
                    var columnChar = square.substringFromIndex(index)
                    
                    // Convert column character to a column number
                    if let columnNumber = columns[columnChar] {
                        // Get the piece at the specified row/column
                        rate = qMatrix[columnNumber][rowNumber]
                    }
                }
            }
            return rate
        }
    }
    subscript(row: Character, column: Int) -> String? {
        
        get {
            var quantity: String? = nil
            
            // Convert row character to a row number
            if let rowNumber = rows[String(row)] {
                
                // Convert column to a column number
                if let columnNumber = columns[String(column)] {
                    quantity = qMatrix[column - 1][rowNumber]
                }
            }
            return quantity
        }
    }
    
}




