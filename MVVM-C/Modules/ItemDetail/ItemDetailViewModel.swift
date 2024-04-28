import Foundation

final class ItemDetailViewModel {
    weak var delegate: MainMenuViewModelDelegate?
    
    private let item: MainMenuItem
    
    init(item: MainMenuItem) {
        self.item = item
    }
    
    var navigationTitle: String { item.displayText }
}
