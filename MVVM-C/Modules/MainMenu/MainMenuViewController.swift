import UIKit
import SnapKit

final class MainMenuViewController: BaseTableViewController {
    override var tableViewStyle: UITableView.Style { .insetGrouped }

    private let viewModel: MainMenuViewModel
    
    // MARK: - Initialization
    init(viewModel: MainMenuViewModel) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
        
        title = NSLocalizedString("Main Menu", comment: "")
        view.backgroundColor = Color.primaryBackground
        
        tableView.register(
            UITableViewCell.self,
            forCellReuseIdentifier: UITableViewCell.identifier
        )
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - UITableViewDelegate
extension MainMenuViewController {
    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        viewModel.didSelectItem(at: indexPath.row)
    }
    
    func tableView(
        _ tableView: UITableView,
        heightForRowAt indexPath: IndexPath
    ) -> CGFloat {
        return Constants.menuItemHeight
    }
}

// MARK: - UITableViewDataSource
extension MainMenuViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        return viewModel.availableItems.count
    }
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: UITableViewCell.identifier,
            for: indexPath
        )
        
        cell.selectionStyle = .none
        cell.textLabel?.textColor = Color.primaryText
        cell.contentView.backgroundColor = Color.secondaryBackground
        cell.textLabel?.text = viewModel.availableItems[indexPath.row].displayText
        
        return cell
    }
}

// MARK: - Constants
private extension Constants {
    static let menuItemHeight: CGFloat = 64
}
