//
//  MyView02.swift
//  quartz2D
//
//  Created by yuchen_Mac on 2017/10/12.
//  Copyright © 2017年 yuchen. All rights reserved.
//

import UIKit

class MyView02: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        UIColor.black.setFill()
        UIRectFill(rect)
        
        UIColor.white.setStroke()
        let frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        let frame = self.frame
        UIRectFrame(frame)
    }
 

}
