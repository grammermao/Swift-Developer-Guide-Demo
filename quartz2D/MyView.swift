//
//  MyView.swift
//  quartz2D
//
//  Created by yuchen_Mac on 2017/10/12.
//  Copyright © 2017年 yuchen. All rights reserved.
//

import UIKit

class MyView: UIView {


    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        UIColor.green.setFill();
        UIRectFill(rect)
        
    }


}
