//
//  MTCalendarView.swift
//  MTCalendarPicker
//
//  Created by Mengtian Li on 2020/3/21.
//  Copyright © 2020 Mengtian Li. All rights reserved.
//

import UIKit

class MTCalendarView: UIView {
    
    var containerView: UIView!
//    var chooseBar
    var calendarCView: UICollectionView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - UI
    func setupViews() {
        containerView = UIView()
        containerView.backgroundColor = .red
        self.addSubview(containerView)
        
        //chooseBar
    
        //
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: CalendarConst.cellWidth, height: CalendarConst.cellHeight)
        layout.minimumInteritemSpacing = 0.0
        layout.minimumLineSpacing = CalendarConst.spacing
        layout.sectionInset = .zero
        layout.scrollDirection = .vertical
        
        calendarCView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        calendarCView.backgroundColor = .white
        calendarCView.isScrollEnabled = false
        calendarCView.delegate = self
        calendarCView.dataSource = self
        calendarCView.register(MTCalendarCCell.self, forCellWithReuseIdentifier: "MTCalendarCCell")
        calendarCView.contentSize = CGSize(width: CalendarConst.calendarWidth, height: CalendarConst.calendarHeight)
        
        containerView.addSubview(calendarCView)
    }
    
    func setupConstraints() {
        containerView.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-(0)-[containerView]-(0)-|", options: .directionLeadingToTrailing, metrics: nil, views: ["containerView" : containerView!]))
        self.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-(0)-[containerView]-(0)-|", options: .directionLeadingToTrailing, metrics: nil, views: ["containerView" : containerView!]))
        //
        //
        calendarCView.translatesAutoresizingMaskIntoConstraints = false
        containerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-(margin)-[calendarCView]-(margin)-|", options: .directionLeadingToTrailing, metrics: ["margin":CalendarConst.margin], views: ["calendarCView" : calendarCView!]))
        containerView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:[calendarCView(height)]-(0)-|", options: .directionLeadingToTrailing, metrics: ["height":CalendarConst.calendarHeight], views: ["calendarCView" : calendarCView!]))
    }
}

extension MTCalendarView: UICollectionViewDelegate {
    
}

extension MTCalendarView: UICollectionViewDataSource {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CalendarConst.numOfColumn * CalendarConst.numOfRow
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MTCalendarCCell", for: indexPath)
        return cCell
    }
    
    
}
