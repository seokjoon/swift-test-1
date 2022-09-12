//
//  FooViewController.swift
//  swift-test-1
//
//  Created by m on 2022/09/09.
//

import UIKit
import WebKit

class FooViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var BarButton: UIButton!
    
    @IBOutlet var FooButton: UIButton!
    
    @IBOutlet var FooLabel: UILabel!
    
    @IBOutlet var FooText: UITextField!
    
    @IBOutlet var WebIndicator: UIActivityIndicatorView!
    
    @IBOutlet var WebViewFoo: WKWebView!
    
    

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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        WebViewFoo.navigationDelegate = self
        webLoad("https://stage.daab.me/customer_v2")
        //webLoad("http://memorobot.com")
    }
    
    func webLoad(_ url: String) {
        let urlLocal = URL(string: url)
        let req = URLRequest(url: urlLocal!)
        WebViewFoo.load(req)
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
}
