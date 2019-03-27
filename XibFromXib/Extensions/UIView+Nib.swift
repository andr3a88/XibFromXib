import UIKit

extension UIView {

    
    @discardableResult
    func loadFromNib<T: UIView>(bundle: Bundle = Bundle.main) -> T? {
        let classType = type(of: self)
        let className = String(describing: classType)

        guard
            let views = bundle.loadNibNamed(className, owner: self, options: nil),
            let view = views.first as? T else {
                return nil
        }

        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.constrainAllEdgesToSuperView()

        return view
    }
}
