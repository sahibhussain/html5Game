//
//  GameVC.swift
//  html5Game
//
//  Created by Retailogy on 09/02/21.
//

import UIKit
import WebKit

class GameVC: UIViewController {

    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        val settings: WebSettings = web_view.settings
//        settings.javaScriptEnabled = true
//        settings.databaseEnabled = true
//        settings.domStorageEnabled = true
//        web_view.webChromeClient = object : WebChromeClient() {
//            override fun onExceededDatabaseQuota(
//                url: String,
//                databaseIdentifier: String,
//                currentQuota: Long,
//                estimatedSize: Long,
//                totalUsedQuota: Long,
//                quotaUpdater: WebStorage.QuotaUpdater
//            ) {
//                quotaUpdater.updateQuota((5  1024  1024).toLong())
//            }
//        }
        
        
        webview.navigationDelegate = self
        
        guard let url = URL(string: "http://www.spectgame.sharkywalls.com/") else {return}
        let urlRequest = URLRequest(url: url)
        webview.load(urlRequest)
        
        
    }
    
    @IBAction func closeButtonClicked(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
        
    }
    
    

}


extension GameVC: WKNavigationDelegate {
    
//    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
//        print(#function)
//    }
    
//    func webView(_ webView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, preferences: WKWebpagePreferences, decisionHandler: @escaping (WKNavigationActionPolicy, WKWebpagePreferences) -> Void) {
//        print(#function)
//    }
    
//    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
//        print(#function)
//    }
    
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        print(#function)
    }
    
    func webView(_ webView: WKWebView, didReceiveServerRedirectForProvisionalNavigation navigation: WKNavigation!) {
        print(#function)
    }
    
    func webView(_ webView: WKWebView, didFailProvisionalNavigation navigation: WKNavigation!, withError error: Error) {
        print(#function)
    }
    
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        print(#function)
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        print(#function)
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        print(#function)
    }
    
    
//    func webView(_ webView: WKWebView, didReceive challenge: URLAuthenticationChallenge, completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void) {
//        print(#function)
//    }
    
    func webViewWebContentProcessDidTerminate(_ webView: WKWebView) {
        print(#function)
    }
    
//    func webView(_ webView: WKWebView, authenticationChallenge challenge: URLAuthenticationChallenge, shouldAllowDeprecatedTLS decisionHandler: @escaping (Bool) -> Void) {
//        print(#function)
//    }
    
}
