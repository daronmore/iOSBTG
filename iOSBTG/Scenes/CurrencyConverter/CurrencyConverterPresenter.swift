//
//  CurrencyConverterPresenter.swift
//  iOSBTG
//
//  Created by Filipe Merli on 10/06/20.
//  Copyright © 2020 Filipe Merli. All rights reserved.
//

import Foundation

protocol CurrencyConverterPresentationLogic {
    func showError(withMessage message: String)
}

final class CurrencyConverterPresenter: CurrencyConverterPresentationLogic {
    
    weak var viewController: (CurrencyConverterViewController)?
    
    func showError(withMessage message: String) {
        viewController?.showErrorAlert(with: message)
    }
}
