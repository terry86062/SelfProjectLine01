//
//  TableViewCell.swift
//  SelfProjectLine01
//
//  Created by 黃偉勳 Terry on 2018/10/27.
//  Copyright © 2018年 Terry. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var personName: UILabel!
    @IBOutlet weak var personDialogue: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initChatTableViewCell(imageName: String, title: String, sub: String){
        personImage.image = UIImage(named: imageName)
        personImage.layer.cornerRadius = personImage.frame.size.width / 2
        personImage.clipsToBounds = true
        
        personName.text = title
        personDialogue.text = sub
    }
    
}
