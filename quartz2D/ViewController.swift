//
//  ViewController.swift
//  quartz2D
//
//  Created by yuchen_Mac on 2017/10/12.
//  Copyright © 2017年 yuchen. All rights reserved.
//
//------------------------介绍ios的绘图-------------------------

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        addMyview(); // test01---UIKit绘图
//        addMyview02() //test02---UIKit画边框
//        addString()  //test03---UIKit画文字
//        addQuartz01()  //Quartz 2D画三角形
        movePicture()
        
    }
    func addMyview()  {
        let view = MyView(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        view.center = self.view.center
        self.view.addSubview(view)
    }
    func addMyview02()  {
        let view = MyView02(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        view.center = self.view.center
        self.view.addSubview(view)
    }
    func addString()  {
        let view = DrawpicAndstring(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        view.center = self.view.center
        self.view.addSubview(view)
    }
    func addQuartz01()  {
        let view = Quartz01(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        view.center = self.view.center
        self.view.addSubview(view)
    }
    func movePicture()  {
        let view = Quartz02(frame: self.view.frame)
        view.center = self.view.center
        self.view.addSubview(view)
    }


}

