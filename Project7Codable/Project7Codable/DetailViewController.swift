//
//  DetailViewController.swift
//  Project7Codable
//
//  Created by James Daniel Malvern on 02/05/2019.
//  Copyright © 2019 Malvernation. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    var webView: WKWebView!
    var detailItem: Petition?
    
    override func loadView() {
//        
//        let attrs = [
//            NSAttributedString.Key.foregroundColor: UIColor.red,
//            NSAttributedString.Key.font: UIFont(name: "Georgia-Bold", size: 10)!
//        ]
//        
//        UINavigationBar.appearance().titleTextAttributes = attrs
        webView = WKWebView()
        view = webView
        title = detailItem?.title
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let detailItem = detailItem else { return }
        
        let html = """

        <html>
            <head>
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <style>
                    body { font-size: 150%; }
                </style>
            </head>
            <body>
                \(detailItem.body)
            </body>
        </html>
        """
        
        webView.loadHTMLString(html, baseURL: nil)
    }

}
