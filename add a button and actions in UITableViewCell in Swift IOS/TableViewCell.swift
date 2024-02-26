//
//  TableViewCell.swift
//  add a button and actions in UITableViewCell in Swift IOS
//
//  Created by mymac on 26/01/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subscribeButton: UIButton!
    
    var subscribeBtn: (() -> ())?
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func subscribe(_ sender: Any) {
        subscribeBtn?()
    }
}
