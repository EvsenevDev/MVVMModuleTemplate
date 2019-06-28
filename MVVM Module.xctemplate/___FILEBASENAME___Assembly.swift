//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

typealias ___VARIABLE_MODULENAME___Module = (view: UIViewController, output: Action)

class ___VARIABLE_MODULENAME___Assembly {

    func build() -> UIViewController {
        let view = ___VARIABLE_MODULENAME___ViewController()
        let router = ___VARIABLE_MODULENAME___Router()
        let viewModel = ___VARIABLE_MODULENAME___ViewModel(router: router)
        
        view.viewModel = viewModel
        router.moduleViewController = view
        
        return view
    }

}
