//
//  ImageCustomView.swift
//  XibFromXib
//
//  Created by Andrea Stevanato on 27/03/2019.
//  Copyright © 2019 Marco Pace. All rights reserved.
//

import UIKit

class ImageCustomView: UIView {

    @IBOutlet private weak var imageDescriptionLabel: UILabel!
    @IBOutlet private weak var imageView: UIImageView!

    override public init(frame: CGRect) {
        super.init(frame: frame)

        // The nib is added as subview
        loadFromNib()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        // The nib is added as subview
        loadFromNib()
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        subviews.first?.backgroundColor = UIColor.white

        imageDescriptionLabel.text = "This is the image description"
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "image")
    }

}

