//
//  ViewController.swift
//  swift-test-1
//
//  Created by m on 2022/09/09.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var BarButton: UIButton!
    
    @IBAction func barButtonAction(_ sender: UIButton) {
        let barAlert = UIAlertController(
            title: "bar alert",
            message: "bar alert message",
            preferredStyle: UIAlertController.Style.alert
        )
        let barAction = UIAlertAction(
            title: "bar action",
            style: UIAlertAction.Style.default,
            handler: nil
        )
        let barActionBar = UIAlertAction(
            title: "bar action bar",
            style: UIAlertAction.Style.default,
            handler: nil
        )
        barAlert.addAction(barAction)
        barAlert.addAction(barActionBar)
        present(barAlert, animated: true, completion: nil)
    }
    
    @IBAction func fooButtonAction(_ sender: UIButton) {
        FooLabel.text = "Foo: " + FooText.text!
    }
    
    @IBOutlet var FooButton: UIButton!
    
    @IBOutlet var FooLabel: UILabel!
    
    @IBOutlet var FooText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        webLoad("https://stage.daab.me/customer_v2")
        //webLoad("http://memorobot.com")
    }
    
    @IBAction func webButtonAction(_ sender: UIButton) {
        
    }
    
    @IBAction func webCodeButtonAction(_ sender: UIButton) {
    }
    
    @IBAction func webFileButtonAction(_ sender: UIButton) {
        
    }
    
    @IBAction func webHomeButtonAction(_ sender: UIButton) {
    
    }

    @IBOutlet var WebIndicator: UIActivityIndicatorView!
    
    func webLoad(_ url: String) {
        let urlLocal = URL(string: url)
        let req = URLRequest(url: urlLocal!)
        WebView.load(req)
    }
    
    @IBOutlet var WebText: UITextField!
    
    
    @IBAction func webToolBackAction(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func webToolForwardAction(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func webToolRefreshAction(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func webToolStopAction(_ sender: UIBarButtonItem) {
    }
    
    @IBOutlet var WebView: WKWebView!

}
