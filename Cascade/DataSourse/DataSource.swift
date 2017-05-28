//
//  DataSource.swift
//  Cascade
//
//  Created by Dmitrii on 28/05/2017.
//  Copyright © 2017 GridCascade. All rights reserved.
//

protocol DataSourceProtocol: class {
    func numberOfItems() -> UInt
}

class DataSource: DataSourceProtocol {
    var items = [DataSourceItem]()
    func numberOfItems() -> UInt {
        return UInt(items.count)
    }
}

class DataSourceItem {
    let name: String
    let url: String
    init(name: String, url: String) {
        self.name = name
        self.url = url
    }
}

class DataSourceItemFolder: DataSourceItem {
}
