//
//  WeatherViewModel.swift
//  ApiCallsUsingCodable_MVVM_ScrollViewDemo
//
//  Created by RaviKrishna on 16/05/24.
//

import Foundation
import UIKit

class WeatherViewModel {
    var userDataArr: [DataArr]?
    var dataList: [List]?
    var weatherArr = [Weather]()
    
    // All Users
    func getUsersDataServiceCall(completion: @escaping () -> Void) {
        getServiceCall(categoryName: APIURL.MULTIPLEUSERS, parameters: nil, type:UsersDataModelObject.self , completionHandler: {(allUsersData) in
            self.userDataArr = allUsersData.data
            completion()
        })
        
    }
    
    // Get Weather info Service call
    func getWeatherDetailServiceCall(completion: @escaping () -> Void) {
        getServiceCall2(categoryName: APIURL.WEATHERDETAIL, parameters: nil, type: WeatherDetailsModelObject.self, completionHandler: {(weatherModel) in
            self.dataList = weatherModel.list
            if let listData = self.dataList {
                for i in 0 ..< listData.count {
                    self.weatherArr.append(contentsOf: listData[i].weather)
                }
            }
            completion()
        })
    }
}

extension WeatherViewModel /***** Post Service Calls ******/{
    func postServiceRequest(completion: @escaping () -> Void) {
        let name = "Lucy"
        let job = "Lead"
        let parameters = "name=\(name)&job=\(job)"
        postServiceCall( categoryName: APIURL.CREATEUSER, parameters: parameters, type: EmpDetailsModelObject.self, completionHandler:  {(empDetails) in
            let empName = empDetails.name
            let empJob = empDetails.job
            completion()
            
            print("Employee Name is:\(empName) and Job is:\(empJob)")
        })
    }
}
