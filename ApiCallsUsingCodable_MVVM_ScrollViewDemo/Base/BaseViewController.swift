//
//  BaseViewController.swift
//  ApiCallsUsingCodable_MVVM_ScrollViewDemo
//
//  Created by RaviKrishna on 16/05/24.
//

import UIKit

class BaseViewController: UIViewController {
    
    let activityIndicator = UIActivityIndicatorView(style: .large)

    override func viewDidLoad() {
        super.viewDidLoad()

        spinnerBoost()
    }

    func spinnerBoost(){
        activityIndicator.center = self.view.center
        self.view.addSubview(activityIndicator)
    }

    func startSpinner() {
        activityIndicator.startAnimating()
    }

    func stopSpinner() {
        self.activityIndicator.stopAnimating()
    }
}
