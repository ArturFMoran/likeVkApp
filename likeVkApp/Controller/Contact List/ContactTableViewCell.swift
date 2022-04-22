//
//  ContactTableViewCell.swift
//  likeVkApp
//
//  Created by Artur Felipe Moran on 21.04.2022.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var ImageBackView: UIView!
    @IBOutlet weak var contactImageView: UIImageView!
    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var contactDescribeLabel: UILabel!
    
    
    func setup() {
        
    }

    func clearCell() {
        
    }

    override func prepareForReuse() {
    clearCell()
        
    }

    func configure() {
        contactImageView.layer.cornerRadius = contactImageView.frame.size.height / 2
        ImageBackView.layer.cornerRadius = ImageBackView.frame.size.height / 2

    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        ImageBackView.layer.shadowRadius = 7
        ImageBackView.layer.shadowOpacity = 0.9
        ImageBackView.layer.shadowOffset = CGSize(width: 1, height: 1)
        ImageBackView.layer.shadowColor = UIColor.black.cgColor
        
    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//    }
//
}
