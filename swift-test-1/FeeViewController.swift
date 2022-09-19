//
//  FeeViewController.swift
//  swift-test-1
//
//  Created by mi on 2022/09/19.
//

import UIKit

class FeeViewController: UIViewController {
    
    
    
    @IBAction func moveStartButtonAction(_ sender: UIButton) {
        self.presentingViewController?.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
