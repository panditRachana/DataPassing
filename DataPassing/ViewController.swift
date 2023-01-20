//
//  ViewController.swift
//  DataPassing
//
//  Created by Rachana Pandit on 21/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblFirstName: UILabel!
    @IBOutlet weak var txtFieldFirstName: UITextField!
    @IBOutlet weak var lblRollNo: UILabel!
    @IBOutlet weak var txtFieldRollNo: UITextField!
    @IBOutlet weak var lblLastName: UILabel!
    @IBOutlet weak var txtFieldLastName: UITextField!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var switchOn: UISwitch!
    @IBOutlet weak var viewData:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func btnSwitchClick(_ sender: Any) {
        if switchOn.isOn == true
        {
            viewData.isHidden = false
        }
        else
        {
            viewData.isHidden = true
        }
    }
    
    @IBAction func btnSubmitClick(_ sender: Any)
    {
        let SecondVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        SecondVC.arrayData.append(["firstName":txtFieldFirstName.text!,
                        "rollNo":txtFieldRollNo.text!,
                        "lastName":txtFieldLastName.text!,
                                   "email":txtFieldEmail.text!])
        navigationController?.pushViewController(SecondVC, animated: true)
    }
    
}

