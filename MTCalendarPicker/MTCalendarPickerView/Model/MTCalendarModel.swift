//
//  MTCalendarModel.swift
//  MTCalendarPicker
//
//  Created by Mengtian Li on 2020/3/21.
//  Copyright © 2020 Mengtian Li. All rights reserved.
//

import UIKit

class MTCalendarModel: NSObject {
    
    var calendar: NSCalendar!
    
    override init() {
        super.init()
        
        calendar = NSCalendar.current
        
    }
    

}
