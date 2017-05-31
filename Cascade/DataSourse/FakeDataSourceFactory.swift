//
//  FakeDataSourceFactory.swift
//  Cascade
//
//  Created by Dmitrii on 28/05/2017.
//  Copyright © 2017 GridCascade. All rights reserved.
//

import Foundation

class FakeDataSourceFactory {

    class func dataSource(numberOfItems: UInt) -> DataSource {
        let dataSource = DataSource()
        for i in 0..<numberOfItems {
            dataSource.items.append(DataSourceItem(name: "Item \(i)", url: "url"))
        }
        return dataSource
    }
}
