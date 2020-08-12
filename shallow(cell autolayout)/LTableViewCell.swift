//
//  LTableViewCell.swift
//  shallow(cell autolayout)
//
//  Created by fun on 2020/8/12.
//

import UIKit

class LTableViewCell: UITableViewCell {
    @IBOutlet weak var LTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
