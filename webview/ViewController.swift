//
//  ViewController.swift
//  webview
//
//  Created by maechabin on 2015/06/20.
//  Copyright (c) 2015年 maechabin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    @IBOutlet weak var urlField: UITextField!

    var url:String = "http://mae.chab.in/"

    func loadURL() {

        let requestURL = NSURL(string: url)
        let request = NSURLRequest(URL: requestURL!)
        webview.loadRequest(request)

    }

    @IBAction func getUrl(sender: AnyObject) {
        url = urlField.text!
        loadURL()
        urlField.resignFirstResponder()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadURL()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

