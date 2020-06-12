//
//  CurrencyListInteractor.swift
//  iOSBTG
//
//  Created by Filipe Merli on 11/06/20.
//  Copyright © 2020 Filipe Merli. All rights reserved.
//

import Foundation

protocol CurrencyListBusinessLogic {
    func fetchAllCurrencies()
}

final class CurrencyListInteractor: CurrencyListBusinessLogic {
    
    var presenter: CurrencyListPresentationLogic?
    private var worker: CurrencyListWorker?
    
    func fetchAllCurrencies() {
        //
    }
    
}
