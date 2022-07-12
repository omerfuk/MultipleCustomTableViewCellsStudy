//
//  CenteredImageTableViewCell.swift
//  MultipleCustomTableViewCellsStudy
//
//  Created by Ömer Faruk Kılıçaslan on 12.07.2022.
//

import UIKit

class CenteredImageTableViewCell: UITableViewCell {
    
    @IBOutlet var myCenteredImageView: UIImageView!
    
    static let identifier = "CenteredImageTableViewCell"
    
    static func nib() -> UINib {
        
        return UINib(nibName: "CenteredImageTableViewCell", bundle: nil)
    }
    
    public func configure(with imageName: String) {
        
        myCenteredImageView.image = UIImage(named: imageName)
        myCenteredImageView.clipsToBounds = true
    }
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
