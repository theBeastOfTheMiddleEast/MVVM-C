import UIKit

final class MainMenuCoordinator: Coordinator {
    private(set) var controller: UIViewController
    
    init() {
        let viewModel = MainMenuViewModel()
        controller  = MainMenuViewController(viewModel: viewModel)
        
        viewModel.delegate = self
    }
}

// MARK: - MainMenuViewModelDelegate
extension MainMenuCoordinator: MainMenuViewModelDelegate {
    func mainMenuViewModelDidTrigger(_ menuItem: MainMenuItem) { }
}
