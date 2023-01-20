//
//  TableViewCell.swift
//  DataPassing
//
//  Created by Rachana Pandit on 21/11/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblFirstName:UILabel!
    @IBOutlet  weak var lblRollNo:UILabel!
    @IBOutlet weak var lblLastName:UILabel!
    @IBOutlet weak var lblEmail:UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
