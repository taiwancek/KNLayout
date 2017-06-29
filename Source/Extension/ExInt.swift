//
//  ExInt.swift
//  KNLayout
//
//  Created by cek on 2017/6/29.
//  Copyright © 2017年 . All rights reserved.
//

import UIKit


public extension Int
{
    var kn:knNamespace
    {
        get { return knNamespace(self) }
    }

    struct knNamespace
    {
        var _self:Int

        init(_ _self:Int)
        {
            self._self = _self
        }


        public var pt:CGFloat
        {
            return CGFloat(_self) * UIDevice().kn.sizeScale
        }
    }
}
