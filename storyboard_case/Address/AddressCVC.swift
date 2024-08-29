//
//  AddressCVC.swift
//  storyboard_case
//
//  Created by Aya Baghdadi on 8/29/24.
//

import UIKit

class AddressCVC: UICollectionViewCell {
    
    @IBOutlet weak var desCell: UILabel!
    @IBOutlet weak var titleCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

        contentView.translatesAutoresizingMaskIntoConstraints = false
        
    }

    override func preferredLayoutAttributesFitting(_ layoutAttributes: UICollectionViewLayoutAttributes) -> UICollectionViewLayoutAttributes {

        setNeedsLayout()
        layoutIfNeeded()
        
        let targetSize = CGSize(width: layoutAttributes.size.width, height: UIView.layoutFittingCompressedSize.height)
        let autoLayoutSize = contentView.systemLayoutSizeFitting(targetSize,
                                                                 withHorizontalFittingPriority: .required,
                                                                 verticalFittingPriority: .fittingSizeLevel)
        var frame = layoutAttributes.frame
        frame.size.height = ceil(autoLayoutSize.height)
        layoutAttributes.frame = frame
        return layoutAttributes
        
    }

    
}
