//
//  ViewController.swift
//  Project4
//
//  Created by James Daniel Malvern on 15/04/2019.
//  Copyright © 2019 Malvernation. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // forced unwrapped because it's hand-typed, thus 99% reliable
        let url = URL(string: "https://www.bbc.co.uk")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }


}

