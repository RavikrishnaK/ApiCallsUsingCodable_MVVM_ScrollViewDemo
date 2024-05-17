//
//  DetailsViewController.swift
//  ApiCallsUsingCodable_MVVM_ScrollViewDemo
//
//  Created by RaviKrishna on 16/05/24.
//

import UIKit

class DetailsViewController: BaseViewController {
    
    @IBOutlet weak var tableViewObj: UITableView!
    var viewModelObj = WeatherViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.config()
        self.loadData()
    }
    
    func config(){
        self.tableViewObj.delegate = self
        self.tableViewObj.dataSource = self
    }
    
    func loadData() {
        self.startSpinner()
        //        viewModelObj.getWeatherDetailServiceCall {
        //            DispatchQueue.main.async {
        //                self.tableViewObj.reloadData()
        //                self.stopSpinner()
        //            }
        //        }
        viewModelObj.getUsersDataServiceCall {
            DispatchQueue.main.async {
                self.tableViewObj.reloadData()
//                self.stopSpinner()
            }
        }
        viewModelObj.postServiceRequest {
            DispatchQueue.main.async {
                self.stopSpinner()
            }
        }
    }
}

extension DetailsViewController: UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let dataUsers = viewModelObj.userDataArr else { return 0}
        return dataUsers.count
        
 //     return viewModelObj.weatherArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewObj.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as UITableViewCell
        cell.textLabel?.text = viewModelObj.userDataArr?[indexPath.row].firstName
        
        //        cell.textLabel?.text = viewModelObj.weatherArr[indexPath.row].description
        return cell
    }
}

// commint not added correctly
