//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//  Generated using MVVM Module Generator by Mohamad Kaakati
//  https://github.com/Kaakati/MVVM-Template-Generator
//

import UIKit

protocol ___VARIABLE_productName:identifier___ViewProtocol {
    func viewWillPresent(data: ___VARIABLE_productName:identifier___)
}

class ___VARIABLE_productName:identifier___View: UIViewController, ___VARIABLE_productName:identifier___ViewProtocol {
    
    private var ui = ___VARIABLE_productName:identifier___UI()
    var viewModel : ___VARIABLE_productName:identifier___ViewModel! {
        willSet {
            newValue.view = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel.fetchData()
    }
    
    override func loadView() {
        ui.delegate = self
        ui.dataSource = self
        view = ui
    }
    
    func viewWillPresent(data: ___VARIABLE_productName:identifier___) {
        ui.object = data
    }
}

extension ___VARIABLE_productName:identifier___View : ___VARIABLE_productName:identifier___UIDelegate {
    func uiDidSelect(object: ___VARIABLE_productName:identifier___) {
        viewModel.didReceiveUISelect(object: object)
    }
}
