//
//  Constants.swift
//  ApiCallsUsingCodable_MVVM_ScrollViewDemo
//
//  Created by RaviKrishna on 16/05/24.
//

import Foundation
import UIKit

let BASEURL     = "https://reqres.in/api/"

struct APIURL {
    
    static let MULTIPLEUSERS        = "users?page=2"
    static let SINGLEUSER           = "users/2"
    static let CREATEUSER           = "users"
    static let EMPLOYEES            = "employees"
    static let COUNTRIESDETAIL      = "name/eesti"
    static let WEATHERDETAIL        = "city?bbox=12,32,15,37,10&appid=b6907d289e10d714a6e88b30761fae22"
}
