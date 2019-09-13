//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created ___FULLUSERNAME___ on ___DATE___.
//  Copyright © ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_productName:identifier___UIDelegate {
    func uiDidSelect(object: ___VARIABLE_productName:identifier___Model)
}

protocol ___VARIABLE_productName:identifier___UIDataSource {
    func objectFor(view: ___VARIABLE_productName:identifier___UI) -> ___VARIABLE_productName:identifier___Model
}

class ___VARIABLE_productName:identifier___UI : UIView {
    var delegate: ___VARIABLE_productName:identifier___UIDelegate!
    var dataSource: ___VARIABLE_productName:identifier___UIDataSource!
    
    var object : ___VARIABLE_productName:identifier___Model?
    var cellIdentifier = "___VARIABLE_productName:identifier___CellId"
    
    lazy var tableView : UITableView = {
        let tbl = UITableView()
        tbl.delegate = self
        tbl.dataSource = self
        tbl.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        return tbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUIElements()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setupConstraints()
    }
}

extension ___VARIABLE_productName:identifier___UI {
    
    /// Reloading the data and update the ui according to the new data
    func reloadData() {
        // Should update UI
        self.object = dataSource?.objectFor(view: self)
    }
    
    private func setupUIElements() {
        // arrange subviews
    }
    
    private func setupConstraints() {
        // add constraints to subviews
    }
    
}

extension ___VARIABLE_productName:identifier___UI: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        return cell
    }
}


extension ___VARIABLE_productName:identifier___UI: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        delegate?.uiDidSelect(object: self.object!)
    }
}

