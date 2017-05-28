//
//  UI.swift
//  Cascade
//
//  Created by Dmitrii on 28/05/2017.
//  Copyright © 2017 GridCascade. All rights reserved.
//

import Foundation

protocol UIProtocol: class {
    func view() -> UIView
}

class UIModule: UIProtocol {

    let items: [DataSourceItem]

    init(items: [DataSourceItem]) {
        self.items = items
    }

    internal func view() -> UIView {
        let view = UIView()
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 50)
        label.text = "\(items.count)"
        label.textColor = UIColor.white
        view.addSubview(label)
        label.autoCenterInSuperview()
        return view
    }
}
