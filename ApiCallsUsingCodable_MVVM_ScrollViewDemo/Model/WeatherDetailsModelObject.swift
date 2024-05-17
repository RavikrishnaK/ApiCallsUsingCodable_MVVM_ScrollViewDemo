//
//  WeatherDetailsModelObject.swift
//  ApiCallsUsingCodable_MVVM_ScrollViewDemo
//
//  Created by RaviKrishna on 16/05/24.
//

import Foundation

// MARK: - Welcome
struct WeatherDetailsModelObject: Codable {
    let cod: String
    let calctime: Double
    let cnt: Int
    let list: [List]
}

// MARK: - List
struct List: Codable {
    let id: Int
    let name: String
    let coord: Coord
    let main: MainClass
    let dt: Int
    let wind: Wind
    let rain: Rain?
    let clouds: Clouds
    let weather: [Weather]
}

// MARK: - Clouds
struct Clouds: Codable {
    let all: Int
}

// MARK: - Coord
struct Coord: Codable {
    let lon, lat: Double
}

// MARK: - MainClass
struct MainClass: Codable {
    let temp, tempMin, tempMax, pressure: Double
    let seaLevel, grndLevel: Double?
    let humidity: Int

    enum CodingKeys: String, CodingKey {
        case temp
        case tempMin = "temp_min"
        case tempMax = "temp_max"
        case pressure
        case seaLevel = "sea_level"
        case grndLevel = "grnd_level"
        case humidity
    }
}

// MARK: - Rain
struct Rain: Codable {
    let the3H: Double

    enum CodingKeys: String, CodingKey {
        case the3H = "3h"
    }
}

// MARK: - Weather
struct Weather: Codable {
    let id: Int
    let main: MainEnum
    let description, icon: String
}

enum MainEnum: String, Codable {
    case clouds = "Clouds"
    case rain = "Rain"
}

// MARK: - Wind
struct Wind: Codable {
    let speed, deg: Double
    let varBeg, varEnd: Int?

    enum CodingKeys: String, CodingKey {
        case speed, deg
        case varBeg = "var_beg"
        case varEnd = "var_end"
    }
}
