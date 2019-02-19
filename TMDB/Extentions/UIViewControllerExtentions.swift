//
//  UIViewControllerExtentions.swift
//  TMDB
//
//  Created by Karigor on 2/19/19.
//  Copyright © 2019 IK. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentAlertWithTitle(title: String, message: String, buttons: String..., completion: @escaping (Int) -> Void) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        for (index, option) in buttons.enumerated() {
            alertController.addAction(UIAlertAction(title: option, style: .default, handler: { _ in
                completion(index)
            }))
        }
        present(alertController, animated: true, completion: nil)
    }
}
