//
//  SecondViewController.swift
//  DataPassing
//
//  Created by Rachana Pandit on 21/11/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tblUserData:UITableView!
    var arrayData = [[String:Any]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewDelegateAndDataSource()
        registerXib()
        print(arrayData)
        print(arrayData.count)
    }
    
    func tableViewDelegateAndDataSource()
    {
        tblUserData.delegate = self
        tblUserData.dataSource = self
    }
    
    func registerXib()
    {
       let nibName = UINib(nibName: "TableViewCell", bundle: nil)
        tblUserData.register(nibName, forCellReuseIdentifier: "TableViewCell")
    }
}
extension SecondViewController:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tblUserData.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.lblFirstName.text = arrayData[indexPath.row]["firstName"]
        as? String
        cell.lblRollNo.text = arrayData[indexPath.row]["rollNo"]
        as? String
        cell.lblLastName.text = arrayData[indexPath.row]["lastName"] as? String
        cell.lblEmail.text = arrayData[indexPath.row]["email"] as? String
        return cell
    }
}
extension SecondViewController:UITableViewDelegate
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        148.0
    }
}
