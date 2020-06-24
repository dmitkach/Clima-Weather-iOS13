//
//  WeatherModel.swift
//  Clima
//
//  Created by Dmitry Tkach on 23.06.2020.
//  Copyright © 2020 Dmitry Tkach. All rights reserved.
//

import Foundation

struct WeatherModel {
    let cityName: String
    let conditionId: Int
    let temperature: Double
    
    private var temperatureString: String {
        return String(format: "%.0f", temperature)
    }
    
    func getTemperatureString() -> String {
        return temperatureString
    }
    
    func getCityName() -> String {
        return cityName
    }
    
    private var conditionSymbolName: String {
        switch conditionId {
        case 200...232:
            return "cloud.bolt"
        case 300...321:
            return "cloud.drizzle"
        case 500...531:
            return "cloud.rain"
        case 600...622:
            return "cloud.snow"
        case 701...781:
            return "cloud.fog"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud.bolt"
        default:
            return "cloud"
        }
    }
    
    func getConditionSymbolName() -> String {
        return conditionSymbolName
    }
}
