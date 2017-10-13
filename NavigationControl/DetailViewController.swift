//
//  DetailViewController.swift
//  NavigationControl
//
//  Created by yuchen_Mac on 2017/10/11.
//  Copyright © 2017年 yuchen. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webview:WKWebView!
    var urlString:String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.webview = WKWebView(frame: self.view.frame)
        self.view.addSubview(self.webview)
        self.webview.navigationDelegate = self as? WKNavigationDelegate
        
        let url = URL(string: urlString)
        let request = URLRequest(url: url!)
        self.webview.load(request)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
