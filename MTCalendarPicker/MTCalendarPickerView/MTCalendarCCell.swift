//
//  MTCalendarCCell.swift
//  MTCalendarPicker
//
//  Created by Mengtian Li on 2020/3/21.
//  Copyright © 2020 Mengtian Li. All rights reserved.
//

import UIKit

class MTCalendarCCell: UICollectionViewCell {
    
    var label: UILabel!
    
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
        label = UILabel()
        label.textAlignment = .center
        let random = Int.random(in: 1...31)
        label.text = String(random)
        self.contentView.addSubview(label)
        
        let random2 = CGFloat.random(in: 0...255)
        let random3 = CGFloat.random(in: 0...255)
        let random4 = CGFloat.random(in: 0...255)
        self.contentView.backgroundColor = UIColor(hue: random2 / 255.0, saturation: random3 / 255.0, brightness: random4 / 255.0, alpha: 1.0)
        
        
    }
    
    func setupConstraints() {
        //center 居中
        label.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addConstraint(NSLayoutConstraint(item: label!, attribute: .centerX, relatedBy: .equal, toItem: self.contentView, attribute: .centerX, multiplier: 1.0, constant: 0.0))
        self.contentView.addConstraint(NSLayoutConstraint(item: label!, attribute: .centerY, relatedBy: .equal, toItem: self.contentView, attribute: .centerY, multiplier: 1.0, constant: 0.0))
    }
}
