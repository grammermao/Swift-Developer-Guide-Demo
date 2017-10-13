//
//  MainTableViewController.swift
//  tableview_edit
//
//  Created by yuchen_Mac on 2017/9/27.
//  Copyright © 2017年 yuchen. All rights reserved.
//

import UIKit

class MainTableViewController: UITableViewController,UITextFieldDelegate {

    @IBOutlet var txtField: UITextField!
    var listTeams:NSMutableArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        self.navigationItem.title = "tableviewCellEdit"
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        self.txtField.isHidden = true
        self.txtField.delegate = self
        self.listTeams = NSMutableArray(array: ["黑龙江","吉利","辽宁"])
    }
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        self.tableView.setEditing(editing, animated: true)
        if editing {
            self.txtField.isHidden = false
        }else{
            self.txtField.isHidden = true
        }
    }


    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1;
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.listTeams.count + 1
    }
    


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let inx = (indexPath as NSIndexPath).row == self.listTeams.count
        if !inx {
            cell.accessoryType = .disclosureIndicator
            cell.textLabel?.text = self.listTeams[(indexPath as NSIndexPath).row] as? String
        }else{
            self.txtField.frame = CGRect(x: 40, y: 0, width: 300, height: cell.frame.size.height)
            cell.addSubview(self.txtField)
        }
        return cell
    }
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCellEditingStyle {
        
        if (indexPath as NSIndexPath).row == self.listTeams.count {
            return UITableViewCellEditingStyle.insert
        }else{
            return UITableViewCellEditingStyle.delete
        }
//        return UITableViewCellEditingStyle.none
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        let indexPaths = [indexPath]
        if editingStyle == .delete {
            self.listTeams.removeObject(at: (indexPath as NSIndexPath).row)
            self.tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.fade)
        }else{
            self.listTeams.insert(self.txtField.text!, at: self.listTeams.count)
            self.tableView.insertRows(at: indexPaths, with: UITableViewRowAnimation.fade)
        }
        self.tableView.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        if indexPath.row == self.listTeams.count {
            return false
        }else{
            return true
        }
    }

    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let stringValue:String = self.listTeams[(sourceIndexPath as NSIndexPath).row] as! String
        self.listTeams.removeObject(at: (sourceIndexPath as NSIndexPath).row)
        self.listTeams.insert(stringValue, at: (destinationIndexPath as NSIndexPath).row)
    }
    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
