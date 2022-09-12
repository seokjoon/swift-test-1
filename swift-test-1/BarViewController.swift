//
//  BarViewController.swift
//  swift-test-1
//
//  Created by mi on 2022/09/12.
//

import UIKit

protocol BarMsgDelegate {
    func didBarMsgDone(_ controller: BarViewController, msg: String)
}

class BarViewController: UIViewController {
    
    var barMsgDelegate: BarMsgDelegate?
    
    @IBOutlet weak var MsgText: UITextField!
    
    @IBOutlet var MsgTextButton: UIButton!
    

    
    @IBAction func msgTextButtonAction(_ sender: UIButton) {
        if barMsgDelegate != nil {
            barMsgDelegate?.didBarMsgDone(self, msg: MsgText.text!)
        }
        _ = navigationController?.popViewController(animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
