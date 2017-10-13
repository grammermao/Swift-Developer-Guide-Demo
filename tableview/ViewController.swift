//
//  ViewController.swift
//  tableview
//
//  Created by yuchen_Mac on 2017/9/27.
//  Copyright © 2017年 yuchen. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate,UISearchResultsUpdating{

    
    @IBOutlet weak var tableview: UITableView!
    var seacrchController:UISearchController!
    var dictData:NSDictionary!
    var tempList:NSArray!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchbar();
        
    }
    
    func setupData()  {
        let plistPath = Bundle.main.path(forResource: "team_dictionary", ofType: "plist")
        self.dictData = NSDictionary(contentsOfFile: plistPath!)
        self.tempList = self.dictData.allKeys as! [String] as NSArray
//        self.tempList = self.tempList.sorted(by: < ) as NSArray!
    }
    func setupSearchbar()  {
        self.seacrchController = UISearchController(searchResultsController: nil)
        self.seacrchController.searchResultsUpdater = self
        self.seacrchController.dimsBackgroundDuringPresentation = false
        self.seacrchController.searchBar.scopeButtonTitles = ["chinease","english"]
        self.seacrchController.searchBar.delegate = self
        self.seacrchController.searchBar.tintColor = UIColor.black
        self.tableview.tableHeaderView = self.seacrchController.searchBar
    }
    // MACK-----
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath)
        cell.accessoryType = .disclosureIndicator
        return cell;
    }

}

