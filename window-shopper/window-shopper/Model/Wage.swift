//
//  Wage.swift
//  window-shopper
//
//  Created by Sherbaz Hashmi on 24/2/18.
//  Copyright © 2018 Sherbaz Hashmi. All rights reserved.
//

import Foundation

class Wage {
    // Parameter Name : parameter
    class func getHours (forWage wage : Double, andPrice price : Double) -> Int {
        return Int(ceil(price/wage))
    }
}
