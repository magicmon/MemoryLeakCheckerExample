//
//  DetailViewController.swift
//  MemoryLeakCheckerExample
//
//  Created by magicmon on 2020/02/20.
//  Copyright © 2020 magicmon. All rights reserved.
//

import UIKit

private var retained: DetailViewController?

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        retained = self
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        dch_checkDeallocation()
    }
    
    deinit {
        print("call deinit")
    }
}
