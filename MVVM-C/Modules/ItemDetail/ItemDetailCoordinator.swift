import UIKit

final class ItemDetailCoordinator: Coordinator {
    private(set) var controller: UIViewController
    
    init(item: MainMenuItem) {
        controller  = ItemDetailViewController(viewModel: ItemDetailViewModel(item: item))
    }
}
