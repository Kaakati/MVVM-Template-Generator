//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

/// ___VARIABLE_productName:identifier___ Module Model
struct ___VARIABLE_productName:identifier___Model {

}


typealias didFetchSuccess = ( ___VARIABLE_productName:identifier___Model)->()
typealias didFailWithError = (Error?) -> ()

struct  ___VARIABLE_productName:identifier___Model {
    var id : Int?
    
    func didFetch(withSuccess: @escaping didFetchSuccess, withError: @escaping didFailWithError) {
        withSuccess( ___VARIABLE_productName:identifier___Model())
        withError(nil)
    }
}