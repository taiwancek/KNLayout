//
//  ExUIDevice.swift
//  KNLayout
//
//  Created by cek on 2017/6/29.
//  Copyright © 2017年 . All rights reserved.
//

import UIKit


public extension UIDevice
{
    var kn:knNamespace
    {
        get { return knNamespace(self) }
    }

    struct knNamespace
    {
        var _self:UIDevice

        init(_ _self:UIDevice)
        {
            self._self = _self
        }

        public var isPhone: Bool
        {
            return UIDevice().userInterfaceIdiom == .phone
        }

        public var isPad: Bool
        {
            return UIDevice().userInterfaceIdiom == .pad
        }

        public var isLandscape: Bool
        {
            let bounds = UIScreen.main.bounds
            return ( bounds.width > bounds.height)
        }

        public var isPortrait: Bool
        {
            let bounds = UIScreen.main.bounds
            return ( bounds.height > bounds.width)

        }

        public var statusBarHeight:CGFloat
        {
            #if NS_EXTENSION_UNAVAILABLE
                return  UIApplication.shared.statusBarFrame.size.height
            #else
                return 0
            #endif
        }

        public var sizeScale: CGFloat
        {
            var desingWidthPoint:CGFloat = 414 //The default is the width of the iPhone 6 Plus

            if let path = Bundle.main.path(forResource: "Info", ofType: "plist")
            {
                if let dictRoot = NSDictionary(contentsOfFile: path)
                {
                    if let value = dictRoot["Design Width Point"] as? CGFloat
                    {
                        desingWidthPoint = value
                    }
                }
            }

            return (UIScreen.main.nativeBounds.width / UIScreen.main.nativeScale) / desingWidthPoint

        }

        public var appFrameSize: CGSize
        {
            return UIScreen.main.bounds.size
        }

        public var viewScale:CGFloat
        {
            if UIDevice.current.userInterfaceIdiom == .pad
            {
                let frameWidth = UIScreen.main.bounds.size.width
                let deviceWidth = UIScreen.main.bounds.width
                return frameWidth / deviceWidth
            }
            
            return 1
        }
    }
    
}
