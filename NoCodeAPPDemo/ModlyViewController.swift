//
//  ModlyViewController.swift
//  NoCodeAPPDemo
//
//  Created by yuchen_Mac on 2017/10/11.
//  Copyright © 2017年 yuchen. All rights reserved.
//

import UIKit

class ModlyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
    @IBAction func saveAction(_ sender: Any) {
        self.dismiss(animated: true) {
            print("模态页面关闭")
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
