// Created by Luna Graysen on 2021-01-18.

import UIKit

final class MainView: UITableViewController, ViewInterface {
    // MARK: Properties
    var presenter: MainPresenterViewInterface!
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.presenter.refresh()
        configureUI()
    }
    
    func configureUI() {
        // Set navigation bar title to Demo.
        title = "Demo"
        // Add "Add" button to right side of the navigation bar.
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(handleAddBarButtonItemPressed(sender:)))
        // Reinitialize the table view with grouped style.
        self.tableView = UITableView(frame: .zero, style: .grouped)
    }
    
    // MARK: Actions
    @objc private func handleAddBarButtonItemPressed(sender: UIBarButtonItem) {
        presenter.handleAddBarButtonItemPressed()
    }
    
    // MARK: UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Number of cells that will be drawn.
        return presenter.numberOfRows()
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Initialize cell with subtitle type and cell reuse identifier.
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        // Get specific mood from data source.
        let mood = presenter.mood(for: indexPath)
        // Set top text label to the mood.
        cell.textLabel?.text = mood.type.rawValue.capitalized
        // Set bottom text label to the formatted date.
        cell.detailTextLabel?.text = Formatter.string(from: mood.createdAt)
        
        // Return the cell.
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        // Only accept delete editing style events.
        guard .delete == editingStyle else {
            // Exit early for everything else.
            return
        }
        
        presenter.deleteMood(at: indexPath)
        reloadData()
    }
}

extension MainView: MainViewPresenterInterface {
    func reloadData() {
        self.presenter.refresh()
        tableView.reloadData()
    }
}
