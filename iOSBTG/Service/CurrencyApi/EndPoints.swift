//
//  EndPoints.swift
//  iOSBTG
//
//  Created by Filipe Merli on 10/06/20.
//  Copyright © 2020 Filipe Merli. All rights reserved.
//

import Foundation

enum Endpoints<T: CurrencyApiClient> {
    case allCurrencies

    var url: URL {
        let path: String
        
        switch self {
        case .allCurrencies:
            path = ""
        }
        
        return URL(string: T.baseURL + path) ?? URL(fileURLWithPath: "https://")
    }
}
