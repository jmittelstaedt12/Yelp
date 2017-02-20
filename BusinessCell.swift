//
//  BusinessCell.swift
//  Yelp
//
//  Created by Jacob Mittelstaedt on 2/14/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    
    
    
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var reviewsCountLabel: UILabel!
    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var ratingsImageView: UIImageView!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var business: Business! {
        didSet{
            nameLabel.text = business.name
            thumbImageView.setImageWith(business.imageURL!)
            categoryLabel.text = business.categories
            addressLabel.text = business.address
            reviewsCountLabel.text = "\(business.reviewCount!) Reviews"
            ratingsImageView.setImageWith(business.ratingImageURL!)
            distanceLabel.text = business.distance
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        thumbImageView.layer.cornerRadius = 5
        thumbImageView.clipsToBounds = true
        
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        // Initialization code
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
