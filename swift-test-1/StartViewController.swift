//
//  StartViewController.swift
//  swift-test-1
//
//  Created by mi on 2022/09/12.
//

import UIKit

class StartViewController: UIViewController, BarMsgDelegate {

    @IBOutlet var BarMsgText: UITextView!
    
    
    
    func didBarMsgDone(_ controller: BarViewController, msg: String) {
        BarMsgText.text = msg
    }
    
    @IBAction func moveFeeButtonAction(_ sender: UIButton) {
        let fvc = self.storyboard!.instantiateViewController(withIdentifier: "Fee")
        self.present(fvc, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "BarIdentifier") {
            let barViewController = segue.destination as! BarViewController
            barViewController.barMsgDelegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
