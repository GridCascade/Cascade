//
//  Controller.swift
//  Cascade
//
//  Created by Dmitrii on 28/05/2017.
//  Copyright © 2017 GridCascade. All rights reserved.
//

import UIKit

class Controller {

    let viewModule: UIProtocol
    let modelModule: DataSourceProtocol

    init(view: UIProtocol, model: DataSourceProtocol) {
        self.viewModule = view
        self.modelModule = model
    }

    func view() -> UIView {
        return viewModule.view()
    }
}
