//
//  BaseViewController.swift
//  TMDB
//
//  Created by Karigor on 2/19/19.
//  Copyright © 2019 IK. All rights reserved.
//

import JGProgressHUD
import UIKit

class BaseViewController: UIViewController {
    let hud = JGProgressHUD(style: .light)

    let sizeFont: CGFloat = 17
    
    override func viewWillAppear(_: Bool) {
        super.viewWillAppear(true)

        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1),
            NSAttributedString.Key.font: UIFont(name: R.font.circeRegular.fontName, size: sizeFont)!,
        ]
    }
    
    func showLoad() {
        hud.show(in: view)
    }
    
    func hideLoad() {
        hud.dismiss()
    }
}
