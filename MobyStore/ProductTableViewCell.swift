//
//  ProductTableViewCell.swift
//  MobyStore
//
//  Created by Yernar Dyussenbekov on 16.11.2024.
//

import UIKit
import SDWebImage

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var oldPriceLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var basketButton: UIButton!
    @IBOutlet weak var availableLabel: UILabel!
    @IBOutlet weak var commentsLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func setData(phone: Phone) {
        productImage.sd_setImage(with: URL(string: phone.image))
        nameLabel.text = phone.name
        priceLabel.text = "\(phone.price) ₸"
        
        let attributrdText = NSAttributedString(string: "\(phone.oldPrice) ₸", attributes: [.strikethroughStyle: NSUnderlineStyle.single.rawValue])
        oldPriceLabel.attributedText = attributrdText
        
        availableLabel.text = phone.available
        availableLabel.layer.cornerRadius = 5
        availableLabel.layer.masksToBounds = true
        
        for i in 1001...(1001+phone.rating-1) {
            let ratingImage = self.viewWithTag(i) as! UIImageView
            ratingImage.tintColor = .systemYellow
        }
        
        if phone.comments > 0 {
            commentsLabel.text = "\(phone.comments) отзыва"
        }
        
    }
    
   
    
    
}
