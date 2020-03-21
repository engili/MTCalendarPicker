//
//  MTConst.swift
//  MTCalendarPicker
//
//  Created by Mengtian Li on 2020/3/21.
//  Copyright © 2020 Mengtian Li. All rights reserved.
//

import UIKit

struct CalendarConst {
    static let numOfColumn = 7
    static let numOfRow = 6
    //UI
    //Cell
    static let margin: CGFloat = 10.0  //左右边距
    static var cellWidth: CGFloat {
        return (UIScreen.main.bounds.size.width - margin * 2)  / CGFloat(numOfColumn)
    }
    static var cellHeight: CGFloat {
        return cellWidth
    }
    static let spacing: CGFloat = 5.0   //上下间距
    //CalendarView
    static var calendarHeight: CGFloat {
        return cellHeight * CGFloat(numOfRow) + spacing * CGFloat(numOfRow - 1)
    }
    static var calendarWidth: CGFloat {
        return cellWidth * CGFloat(numOfColumn)
    }
}

