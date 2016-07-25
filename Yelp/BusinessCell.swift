//
//  BusinessCell.swift
//  Yelp
//
//  Created by Dinesh Gunda on 7/23/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var categoriesLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var reviewCountLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var ratingImageVIew: UIImageView!
    
    var business: Business!{
        didSet{
            nameLabel.text = business.name
            categoriesLabel.text = business.categories
            distanceLabel.text = business.distance
            addressLabel.text = business.address
            thumbImageView.setImageWithURL(business!.imageURL!)
            ratingImageVIew.setImageWithURL(business.ratingImageURL!)
            
            reviewCountLabel.text = "\(business.reviewCount!) Reviews"
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbImageView.layer.cornerRadius = 3
        thumbImageView.clipsToBounds = true
        
        // Initialization code
    }
    override func layoutSubviews() {
         super.layoutSubviews()
         nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
