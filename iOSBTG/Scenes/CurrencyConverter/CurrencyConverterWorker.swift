//
//  CurrencyConverterWorker.swift
//  iOSBTG
//
//  Created by Filipe Merli on 10/06/20.
//  Copyright © 2020 Filipe Merli. All rights reserved.
//

import Foundation

final class CurrencyConverterWorker {
    
    private let apiClient: CurrencyLiveApiClient
    
    init(apiClient: CurrencyLiveApiClient = CurrencyLiveApiClient.shared) {
        self.apiClient = apiClient
    }
    
    func fetchAllCurrencies(_ completion: @escaping (Result<CurrencyResponse, ResponseError>) -> ()) {
        apiClient.fetchAllCurrencies(completion: completion)
    }
    
}
