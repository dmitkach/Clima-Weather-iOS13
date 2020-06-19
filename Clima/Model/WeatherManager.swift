//
//  WeatherManager.swift
//  Clima
//
//  Created by Dmitry Tkach on 19.06.2020.
//  Copyright © 2020 Dmitry Tkach. All rights reserved.
//

import Foundation

struct WeatherManager {
    let weatherURL =
        "https://api.openweathermap.org/data/2.5/weather?appid=635b14fbb1338fe2c2dff5bb77f89175&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) {
                if $2 != nil {
                    print($2!)
                    return
                }
                if let safeData = $0 {
                    let dataString = String(data: safeData, encoding: .utf8)
                    print(dataString!)
                }
            }
            
            task.resume()
        }
    }
}
