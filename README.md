# KNLayout

KNLayout is a very small library to help make your use of `NSLayoutConstraint` in Swift more legible & declarative.

![screenshot portrait](https://github.com/taiwancek/KNLayout/blob/master/screenshot_portrait.png)


![screenshot landscape](https://github.com/taiwancek/KNLayout/blob/master/screenshot_landscape.png)


Build
=====

Build with Xcode 8.3.3 / Swift 3.1

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

* ViewController.swift
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
        //self.view.kn_layoutHelper.updateConstraint()
    }

}
```

* ViewController+KNLayoutHelper.swift
```swift

import Foundation
import KNLayout


extension ViewController:KNLayoutDelegate
{
    func constraintForPortraitWithPhone(){

        view.kn_layoutHelper.addConstraints{

            $0 += titleLabel.centerYEqual(view,-50.kn.pt)
            $0 += titleLabel.leadingEqual(view)
            $0 += titleLabel.trailingEqual(view)

            $0 += btn.topEqualBottomOf(titleLabel)
            $0 += btn.centerXEqual(view)
            $0 += btn.widthEqual(120.kn.pt)
            $0 += btn.heightEqual(40.kn.pt)

        }
    }

    func constraintForLandscapeWithPhone() {

        view.kn_layoutHelper.addConstraints{

            $0 += titleLabel.topEqual(view)
            $0 += titleLabel.heightEqual(50.kn.pt)
            $0 += titleLabel.leadingEqual(view)
            $0 += titleLabel.trailingEqual(view)

            $0 += btn.topEqualBottomOf(titleLabel)
            $0 += btn.leadingEqual(view)
            $0 += btn.trailingEqual(view)
            $0 += btn.bottomEqual(view)

        }
    }


//    func constraintForPortraitWithPad() {
//
//    }
//
//
//    func constraintForLandscapeWithPad() {
//
//    }
}

```
