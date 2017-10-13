//
//  Quartz02.swift
//  quartz2D
//
//  Created by yuchen_Mac on 2017/10/12.
//  Copyright © 2017年 yuchen. All rights reserved.
//

import UIKit

class Quartz02: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        UIColor.white.setFill()
        UIRectFill(rect)
        
        
        let image = UIImage(named: "a")
        let cgimage = image?.cgImage
        let context = UIGraphicsGetCurrentContext()
        
    
        //  平移变换
        context?.translateBy(x: 100, y: 64)
        //  缩放变换
        context?.scaleBy(x: 0.5, y: 0.5)
        //  旋转变换
        context?.rotate(by: CGFloat(45.0 * .pi / 180.0))
        
        context?.draw(cgimage!, in: CGRect(x: 0, y: 0, width: (image?.size.width)!, height: (image?.size.height)!))
        
    }

}
