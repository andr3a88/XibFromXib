import Foundation
import UIKit

class HeaderView: UIView {
    
    @IBOutlet private weak var titleLabel: UILabel!

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

        subviews.first?.backgroundColor = UIColor.darkGray
        titleLabel.text = "Header"
    }
}
