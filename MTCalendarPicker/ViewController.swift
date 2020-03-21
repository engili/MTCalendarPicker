//
//  ViewController.swift
//  MTCalendarPicker
//
//  Created by Mengtian Li on 2020/3/21.
//  Copyright © 2020 Mengtian Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calendarView: MTCalendarView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        MTCalendarView *calendarView =
        
      
        
        
        let button = UIButton(frame: CGRect(x: 20, y: 100, width: 50, height: 50))
        button.backgroundColor = .red
        button .addTarget(self, action: #selector(click), for: .touchUpInside)
        
        self.view.addSubview(button)
    }
    
    
    @objc func click () {
        if let cv = calendarView {
            cv.removeFromSuperview()
            calendarView = nil
        } else {
            let width = UIScreen.main.bounds.size.width
            let height = CalendarConst.calendarHeight + 44.0
            var frame = CGRect(x: 0.0, y: 300, width: width, height: height)
            calendarView = MTCalendarView(frame: frame)
            self.view.addSubview(calendarView!)
        }
    }
    


}

