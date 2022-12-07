//
//  UIViewController+Extensions.swift
//  AigenTask
//
//  Created by Sanketh S D on 12/6/22.
//

import UIKit

extension UIViewController{
    func showAlert(title: String, message: String) {
        DispatchQueue.main.async {
            let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertController, animated: true, completion: nil)
        }
    }
}
