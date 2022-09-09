//
//  ViewController.swift
//  swift-test-1
//
//  Created by m on 2022/09/09.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var ButtonFoo: UIButton!

    @IBOutlet weak var LabelFoo: UILabel!

    @IBOutlet var TextFoo: UITextField!
    
    @IBAction func ActionButtonFoo(_ sender: UIButton) {
        LabelFoo.text = "Foo: " + TextFoo.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}
