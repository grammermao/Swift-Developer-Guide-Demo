//
//  ViewController.swift
//  CollectionViewSample
//
//  Created by yuchen_Mac on 2017/9/26.
//  Copyright © 2017年 yuchen. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{

    let COL_NUM = 3
    var enent:NSArray!
    var collectionView:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let plistPath = Bundle.main.path(forResource: "events", ofType: "plist")
        self.enent = NSArray(contentsOfFile: plistPath!)
        setupCollectionView()
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.title = "CollectionView"
    }
    func setupCollectionView()  {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 80, height: 80)
        layout.sectionInset = UIEdgeInsetsMake(15, 15, 30, 15)
        if UIScreen.main.bounds.height > 568 {
            layout.itemSize = CGSize(width: 100, height: 100)
            layout.sectionInset = UIEdgeInsetsMake(15, 15, 20, 15)
        }
        layout.minimumInteritemSpacing = 5
        self.collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        self.collectionView.backgroundColor = UIColor.white
        self.collectionView.register(EvenCollectionViewCell.self, forCellWithReuseIdentifier: "cellID")
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.view.addSubview(self.collectionView)
        
    }

    @IBAction func showTableviewController(_ sender: Any) {
        self.navigationController?.pushViewController(TableviewViewController(), animated: true)
    }
    // MARK ---DATASOURCE & DELEGATE
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return COL_NUM
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellID", for: indexPath) as! EvenCollectionViewCell
        // 防止下标越界
        let inx = indexPath.section * COL_NUM + indexPath.row
        if self.enent.count <= inx {
            return cell;
        }
        let events  = self.enent[inx] as? NSDictionary
        cell.lable.text = events!["name"] as? String
        cell.iamgeView.image = UIImage(named: (events!["image"] as? String)!)
        return cell
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        let num = self.enent.count % COL_NUM
        if num == 0  {
            return self.enent.count % COL_NUM
        }else{
            return self.enent.count % COL_NUM + 1
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("\(indexPath)")
    }

}

