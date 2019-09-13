//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_productName:identifier___ViewModelProtocol {
    func fetchData()
    func didReceiveUISelect(object: ___VARIABLE_productName:identifier___Model)
}

class ___VARIABLE_productName:identifier___ViewModel {
    var view : ___VARIABLE_productName:identifier___ViewProtocol!
    var object = ___VARIABLE_productName:identifier___Model()
    
    func fetchData() {
        object.didFetch(withSuccess: { (success) in
            self.view.viewWillPresent(data: success)
        }) { (err) in
            debugPrint("Error happened", err as Any)
        }
    }
    
    func didReceiveUISelect(object: ___VARIABLE_productName:identifier___Model) {
        debugPrint(object)
    }
}