import UIKit
import SnapKit

/// A base view controller that provides a UITableView instance by default
class BaseTableViewController: BaseViewController {
    var tableViewStyle: UITableView.Style { .plain }
    
    lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: tableViewStyle)
        tableView.backgroundColor = Color.primaryBackground
        tableView.delegate = self
        tableView.dataSource = self
        tableView.keyboardDismissMode = .interactive
        tableView.separatorInset = .zero
        
        return tableView
    }()
    
    // MARK: - View Lifecycle
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = Color.primaryBackground
        
        view.addSubview(tableView)
        view.sendSubviewToBack(tableView)
        
        tableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}

// MARK: - UITableViewDelegate
extension BaseTableViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

// MARK: - UITableViewDataSource
extension BaseTableViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
}
