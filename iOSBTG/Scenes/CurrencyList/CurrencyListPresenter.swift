//
//  CurrencyListPresenter.swift
//  iOSBTG
//
//  Created by Filipe Merli on 11/06/20.
//  Copyright © 2020 Filipe Merli. All rights reserved.
//

import Foundation

protocol CurrencyListPresentationLogic {
    func showError(withMessage message: String)
}

final class CurrencyListPresenter: CurrencyListPresentationLogic {
    
    weak var viewController: (CurrencyListViewController)?
    
    func showError(withMessage message: String) {
        viewController?.showErrorAlert(with: message)
    }
}
