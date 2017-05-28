//
//  DemoViewController.swift
//  Cascade
//
//  Created by Dmitrii on 28/05/2017.
//  Copyright © 2017 GridCascade. All rights reserved.
//

import UIKit

typealias DemoElement = (name: String, numberOfItems: UInt)

private let demoData: [DemoElement] = [
    ("Empty Data", 0),
    ("1 item", 1),
    ("10 items", 10)
]

class DemoViewController: UIViewController {

    weak var delegate: DemoViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Demo"
    }
}

extension DemoViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return demoData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DemoCell", for: indexPath)
        if indexPath.row < demoData.count {
            let item = demoData[indexPath.row]
            cell.textLabel?.text = item.name
        }
        return cell
    }
}

extension DemoViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row < demoData.count {
            let item = demoData[indexPath.row]
            delegate?.pickDemoDataSourse(numberOfItems: item.numberOfItems)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

protocol DemoViewControllerDelegate: class {
    func pickDemoDataSourse(numberOfItems: UInt)
}
