//
//  CurrencyListViewController.swift
//  iOSBTG
//
//  Created by Filipe Merli on 11/06/20.
//  Copyright © 2020 Filipe Merli. All rights reserved.
//

import UIKit

protocol CurrencyListDisplayLogic: class {
}

final class CurrencyListViewController: UIViewController {
    
    // MARK:  Properties
        
    private lazy var loadingIndicator: UIActivityIndicatorView = {
        let indicator = UIActivityIndicatorView()
        indicator.translatesAutoresizingMaskIntoConstraints = false
        indicator.hidesWhenStopped = true
        indicator.style = .gray
        return indicator
    }()
    
    private(set) var viewState: ViewState = .loading {
        didSet {
            switch viewState {
            case .loaded:
                DispatchQueue.main.async {
                    self.loadingIndicator.stopAnimating()
                }
                break
            case .loading:
                DispatchQueue.main.async {
                    self.loadingIndicator.startAnimating()
                }
                break
            case .empty:
                DispatchQueue.main.async {
                    self.loadingIndicator.stopAnimating()
                }
                break
            }
        }
    }
    
    var interactor: CurrencyListBusinessLogic?
    var router: (NSObjectProtocol & CurrencyListRoutingLogic)?
    
    // MARK: Initializers
    
    init(configurator: CurrencyListConfigurator = CurrencyListConfigurator.shared) {
        super.init(nibName: nil, bundle: nil)
        configurator.configure(viewController: self)
        setUpSubViews()
        setUpConstraints()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        CurrencyListConfigurator.shared.configure(viewController: self)
    }
    
    // MARK: ViewController life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if viewState != .loaded {
            viewState = .loading
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let navTopItem = navigationController?.navigationBar.topItem {
            navTopItem.titleView = .none
            navTopItem.title = "List"
        }
    }
    
    // MARK: Class Funcitons
    
    private func setUpSubViews() {
        view.addSubview(loadingIndicator)
    }
    
    private func setUpConstraints() {
        NSLayoutConstraint.activate([
            loadingIndicator.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loadingIndicator.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loadingIndicator.widthAnchor.constraint(equalToConstant: 35.0),
            loadingIndicator.heightAnchor.constraint(equalToConstant: 35.0),
        ])
    }
    
}

// MARK: - CurrencyListDisplayLogic

extension CurrencyListViewController: CurrencyListDisplayLogic {
    
    
}
