//
//  ViewController.swift
//  swift-test-1
//
//  Created by m on 2022/09/09.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

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
        
        WebViewFoo.navigationDelegate = self
        webLoad("https://stage.daab.me/customer_v2")
        //webLoad("http://memorobot.com")
    }
    
    @IBOutlet var WebIndicator: UIActivityIndicatorView!
    
    func webLoad(_ url: String) {
        let urlLocal = URL(string: url)
        let req = URLRequest(url: urlLocal!)
        WebViewFoo.load(req)
    }
    
    @IBAction func webToolBackAction(_ sender: UIBarButtonItem) {
        WebViewFoo.stopLoading()
    }
    
    @IBAction func webToolForwardAction(_ sender: UIBarButtonItem) {
        WebViewFoo.goForward()
    }
    
    @IBAction func webToolRefreshAction(_ sender: UIBarButtonItem) {
        WebViewFoo.reload()
    }
    
    @IBAction func webToolStopAction(_ sender: UIBarButtonItem) {
        WebViewFoo.goForward()
    }
   
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        WebIndicator.startAnimating()
        WebIndicator.isHidden = false
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        WebIndicator.stopAnimating()
        WebIndicator.isHidden = true
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        WebIndicator.stopAnimating()
        WebIndicator.isHidden = true
    }
    
    @IBOutlet var WebViewFoo: WKWebView!

    
}
