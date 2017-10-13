//
//  Quartz01.swift
//  quartz2D
//
//  Created by yuchen_Mac on 2017/10/12.
//  Copyright © 2017年 yuchen. All rights reserved.
//

import UIKit

class Quartz01: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        UIColor.white.setFill()
        UIRectFill(rect)
        
        let context = UIGraphicsGetCurrentContext()
        context?.move(to: CGPoint(x: 100, y: 10))
        context?.addLine(to: CGPoint(x: 190, y: 190))
        context?.addLine(to: CGPoint(x: 10, y: 190))
        context?.closePath()
        UIColor.red.setFill()
        UIColor.gray.setStroke()
        
        context?.drawPath(using: CGPathDrawingMode.fillStroke)
    }
 

}
