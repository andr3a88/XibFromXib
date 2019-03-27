//
//  CustomView.swift
//  XibFromXib
//
//  Created by Andrea Stevanato on 27/03/2019.
//  Copyright © 2019 Marco Pace. All rights reserved.
//

import UIKit

class LabelButtonView: UIView {

    @IBOutlet private weak var detailLabel: UILabel!
    @IBOutlet private weak var button: UIButton!

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

        subviews.first?.backgroundColor = UIColor.lightGray

        detailLabel.text = "This is a label"

        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.darkGray.cgColor
        button.setTitle("This is a button", for: .normal)
        button.setTitle("This is a button", for: .highlighted)
        button.setTitle("This is a button", for: .selected)
    }

}
