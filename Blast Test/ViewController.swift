//
//  ViewController.swift
//  Blast Test
//
//  Created by David on 9/29/18.
//  Copyright © 2018 David. All rights reserved.
//

import WebKit
import UIKit

  class ViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://blastnotifications.com/notifications")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        // Do any additional setup after loading the view, typically from a nib.
    }


}

