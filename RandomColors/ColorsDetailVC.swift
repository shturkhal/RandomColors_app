//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Іван Штурхаль on 10.09.2023.
//

import UIKit

class ColorsDetailVC: UIViewController {

    
    // waiting what color he needs to show
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color ?? .magenta
    }
}

