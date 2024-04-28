import UIKit

/// A base navigation controller that prefers large titles by default
class BaseNavigationController: UINavigationController {
    init(prefersLargeTitles: Bool = true) {
        super.init(nibName: nil, bundle: nil)
        
        navigationBar.prefersLargeTitles = prefersLargeTitles
        navigationBar.tintColor = Color.primaryTint
    }
    
    init(rootViewController: UIViewController, prefersLargeTitles: Bool = true) {
        super.init(rootViewController: rootViewController)
        
        navigationBar.prefersLargeTitles = prefersLargeTitles
        navigationBar.tintColor = Color.primaryTint
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
