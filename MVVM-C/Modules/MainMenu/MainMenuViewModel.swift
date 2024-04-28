import Foundation

protocol MainMenuViewModelDelegate: AnyObject {
    func mainMenuViewModelDidTrigger(_ menuItem: MainMenuItem)
}

final class MainMenuViewModel {
    weak var delegate: MainMenuViewModelDelegate?
    
    let availableItems: [MainMenuItem] = MainMenuItem.allCases
    
    func didSelectItem(at index: Int) {
        delegate?.mainMenuViewModelDidTrigger(availableItems[index])
    }
}
