import UIKit
import Capacitor

class MainViewController: CAPBridgeViewController {
    override func capacitorDidLoad() {
        guard let webView = bridge?.webView else { return }
        webView.allowsBackForwardNavigationGestures = false
        webView.scrollView.bounces = false
        webView.scrollView.bouncesZoom = false
        webView.scrollView.delaysContentTouches = false
        webView.scrollView.canCancelContentTouches = false
        webView.scrollView.isScrollEnabled = false
        webView.scrollView.pinchGestureRecognizer?.isEnabled = false
        webView.scrollView.minimumZoomScale = 1.0
        webView.scrollView.maximumZoomScale = 1.0
    }
}
