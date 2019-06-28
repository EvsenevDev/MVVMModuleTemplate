//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_MODULENAME___ViewModelProtocol {
    func moduleDidLoad()
}

class ___VARIABLE_MODULENAME___ViewModel: ___VARIABLE_MODULENAME___ViewModelProtocol {
    private var router: ___VARIABLE_MODULENAME___RouterProtocol
    
    init(router: ___VARIABLE_MODULENAME___RouterProtocol) {
        self.router = router
    }

    func moduleDidLoad() {

    }
}
