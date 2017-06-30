# KNLayout

KNLayout is a very small library to help make your use of `NSLayoutConstraint` in Swift more legible & declarative.

Build
=====

Build with Xcode 8.3.1 / Swift 3.1

Installation
=====
### CocoaPods
Install using [CocoaPods](http://cocoapods.org) by adding this line to your Podfile:

````ruby
use_frameworks! # Add this if you are targeting iOS 8+ or using Swift
pod 'KNLayout'  
````

Usage
=====

Example in Example project:

* V
```swift
import UIKit
import KNLayout


class ViewController: KNViewController
{
let titleLabel = UILabel()
let btn = UIButton()

override func loadView()
{
super.loadView()

view.kn_addSubview(titleLabel){
$0.text = "Hello KNLayout"
$0.textAlignment = .center
$0.textColor = UIColor.blue
$0.font = UIFont.boldSystemFont(ofSize: 28.kn.pt)
$0.backgroundColor = UIColor.brown
}

view.kn_addSubview(btn){
$0.setTitle("Test Click", for: .normal)
$0.setTitleColor(UIColor.black, for: .normal)
$0.backgroundColor = UIColor.gray
}
}


override func viewDidLoad()
{
super.viewDidLoad()

self.view.kn_layoutHelper.delegate = self
//        self.view.kn_layoutHelper.updateConstraint()
}

}


```
