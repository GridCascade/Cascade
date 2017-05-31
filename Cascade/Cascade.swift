//
//  Cascade.swift
//  Cascade
//
//  Created by Dmitrii on 28/05/2017.
//  Copyright © 2017 GridCascade. All rights reserved.
//

import UIKit

/**
 Root class to use from the client code
 */
class Cascade {

    let controller: Controller

    init(fakeItemCount: UInt) {
        //assembling the entire Cascade

        // here we construct UI and DS 
        // according to parameters or some config
        let modelModule = FakeDataSourceFactory.dataSource(numberOfItems: fakeItemCount)
        let viewModule = UIModule(items: modelModule.items)

        controller = Controller(view: viewModule, model: modelModule)
    }

    /**
     View to present in the client code
     */
    func viewToPresent() -> UIView {
        return controller.view()
    }
}
