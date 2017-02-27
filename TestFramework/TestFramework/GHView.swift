//
//  GHView.swift
//  TestFramework
//
//  Created by 龚浩 on 2017/2/23.
//  Copyright © 2017年 龚浩. All rights reserved.
//

import UIKit

public class GHView: UIView {

    /// nothing
    public func addView() {
//        let views = UINib(nibName: "TestView", bundle: Bundle(for: type(of:self))).instantiate(withOwner: self, options: nil)
        let views = Bundle(for: type(of:self)).loadNibNamed("TestView", owner: self, options: nil)
        let testView = views?.first as! UIView
        testView.frame.size.width = self.frame.width
        addSubview(testView)
    }
}
