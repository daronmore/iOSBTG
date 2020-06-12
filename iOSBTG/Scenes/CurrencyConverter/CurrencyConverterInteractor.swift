//
//  CurrencyConverterInteractor.swift
//  iOSBTG
//
//  Created by Filipe Merli on 10/06/20.
//  Copyright © 2020 Filipe Merli. All rights reserved.
//

import Foundation

protocol CurrencyConverterBusinessLogic {
    func fetchAllCurrencies()
}

final class CurrencyConverterInteractor: CurrencyConverterBusinessLogic {
    
    var presenter: CurrencyConverterPresentationLogic?
    private var worker: CurrencyConverterWorker?
    
    func fetchAllCurrencies() {
        //
    }
    
}
