//
//  EvenCollectionViewCell.swift
//  CollectionViewSample
//
//  Created by yuchen_Mac on 2017/9/26.
//  Copyright © 2017年 yuchen. All rights reserved.
//

import UIKit

class EvenCollectionViewCell: UICollectionViewCell {
    
    var iamgeView:UIImageView!
    var  lable:UILabel!
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        let cellWidth = self.frame.size.width
        self.iamgeView = UIImageView(frame: CGRect (x: (cellWidth-101)/2, y: 15, width: 101, height: 101))
        self.addSubview(self.iamgeView)
        
        self.lable = UILabel(frame: CGRect(x: (cellWidth-101)/2, y: 120, width: 101, height: 16))
        self.lable.font = UIFont.systemFont(ofSize: 13)
        self.lable.textAlignment = .center
        self.addSubview(self.lable)
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
