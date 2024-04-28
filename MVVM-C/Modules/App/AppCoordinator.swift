import UIKit

final class AppCoordinator: Coordinator {
    private(set) lazy var controller: UIViewController = {
        return BaseNavigationController(prefersLargeTitles: true)
    }()
    
    private var mainMenuCoordinator: Coordinator?
    
    private var navigationController: UINavigationController? {
        controller as? UINavigationController
    }
    
    func initializeApplication() {
        let coordinator = MainMenuCoordinator()
        navigationController?.viewControllers = [coordinator.controller]
        
        mainMenuCoordinator = coordinator
    }
}
