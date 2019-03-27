import UIKit

extension UIView {
    func constrainAllEdgesToSuperView(insets: UIEdgeInsets = .zero) {
        guard let superview = self.superview else {
            return
        }

        translatesAutoresizingMaskIntoConstraints = false
        leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: insets.left).isActive = true
        trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: -insets.right).isActive = true
        topAnchor.constraint(equalTo: superview.topAnchor, constant: insets.top).isActive = true
        bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: -insets.bottom).isActive = true
    }
}
