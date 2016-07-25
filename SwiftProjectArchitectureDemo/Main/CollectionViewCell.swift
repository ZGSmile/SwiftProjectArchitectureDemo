//
//  CollectionViewCell.swift
//  ZGSwiftDemo
//
//  Created by mac_zhu on 16/7/21.
//  Copyright © 2016年 mac_zhu. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell
{
    var imageView   :UIImageView?
    var textLabel   :UILabel?
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect)
    {
        super.init(frame: frame)
        // Image view
        self.imageView = UIImageView(frame: CGRectMake(0.0, 0.0, 90.0, 90.0))
        self.contentView.addSubview(self.imageView!)
        
        // Text
        self.textLabel = UILabel(frame: CGRectMake(0.0, 90.0, 95.0, 20.0))
        self.textLabel?.textColor = UIColor.redColor();
        self.textLabel?.textAlignment = NSTextAlignment.Center;
        self.contentView.addSubview(self.textLabel!)
    }
}
