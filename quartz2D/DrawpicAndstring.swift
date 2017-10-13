//
//  DrawpicAndstring.swift
//  quartz2D
//
//  Created by yuchen_Mac on 2017/10/12.
//  Copyright © 2017年 yuchen. All rights reserved.
//

import UIKit

class DrawpicAndstring: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        UIColor.white.setFill()
        UIRectFill(rect)
        
        let string:NSString = "HELLOWORLD"
        let font = UIFont.systemFont(ofSize: 18)
        let attribute = [NSAttributedStringKey.font: font]
        let size = string.size(withAttributes: attribute)
        
        let possitionX = self.frame.size.width/2 - size.width/2
        string.draw(at: CGPoint(x: possitionX, y: 20), withAttributes: attribute)
        string.draw(in: CGRect(x: possitionX, y: 60, width: 110, height: 40), withAttributes: attribute)
        
        let image = UIImage(named: "a.png")
        image?.drawAsPattern(in: CGRect(x: 0, y: 100, width: self.frame.size.width, height: 100))
        
    }
 

}
