//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//  Generated using MVVM Module Generator by Mohamad Kaakati
//  https://github.com/Kaakati/MVVM-Template-Generator
//

import Foundation

protocol ___VARIABLE_productName:identifier___ViewModelProtocol {
    func fetchData()
    func didReceiveUISelect(object: ___VARIABLE_productName:identifier___)
}

class ___VARIABLE_productName:identifier___ViewModel {
    var view : ___VARIABLE_productName:identifier___ViewProtocol!
    var object = ___VARIABLE_productName:identifier___()
    
    func fetchData() {
        object.didFetch(withSuccess: { (success) in
            self.view.viewWillPresent(data: success)
        }) { (err) in
            debugPrint("Error happened", err as Any)
        }
    }
    
    func didReceiveUISelect(object: ___VARIABLE_productName:identifier___) {
        debugPrint("Did receive UI object", object)
    }
}