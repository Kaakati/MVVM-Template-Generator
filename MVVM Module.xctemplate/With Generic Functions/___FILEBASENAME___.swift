//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//  Generated using MVVM Module Generator by Mohamad Kaakati
//  https://github.com/Kaakati/MVVM-Template-Generator
//

/// ___VARIABLE_productName:identifier___ Model
struct  ___VARIABLE_productName:identifier___ {
    typealias didFetchSuccess = (___VARIABLE_productName:identifier___)->()
    typealias didFailWithError = (Error?) -> ()
    
    // Your Model Structure
    var id : Int?
    var name : Int?
    
    func didFetch(withSuccess: @escaping didFetchSuccess, withError: @escaping didFailWithError) {
        withSuccess(___VARIABLE_productName:identifier___())
        withError(nil)
    }
}
