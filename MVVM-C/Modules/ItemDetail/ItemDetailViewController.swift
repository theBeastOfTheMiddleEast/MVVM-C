import UIKit

final class ItemDetailViewController: BaseViewController {
    private let viewModel: ItemDetailViewModel
    
    // MARK: - Initialization
    init(viewModel: ItemDetailViewModel) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
        
        title = viewModel.navigationTitle
        view.backgroundColor = Color.primaryBackground
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
