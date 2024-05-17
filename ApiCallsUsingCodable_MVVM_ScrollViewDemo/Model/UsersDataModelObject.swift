//
//  UsersDataModelObject.swift
//  ApiCallsUsingCodable_MVVM_ScrollViewDemo
//
//  Created by RaviKrishna on 16/05/24.
//

import Foundation
struct UsersDataModelObject: Codable {
    let page, perPage, total, totalPages: Int
    let data: [DataArr]
    
    enum CodingKeys: String, CodingKey {
        case page
        case perPage = "per_page"
        case total
        case totalPages = "total_pages"
        case data
    }
}

struct DataArr: Codable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String
    
    enum CodingKeys: String, CodingKey {
        case id, email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
    }
}
