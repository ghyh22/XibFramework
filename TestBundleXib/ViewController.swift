//
//  ViewController.swift
//  TestBundleXib
//
//  Created by 龚浩 on 2017/2/22.
//  Copyright © 2017年 龚浩. All rights reserved.
//

import UIKit
import TestFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addGHView()
//        addXib()
//        addOtherFrameXib()
// Do any additional setup after loading the view, typically from a nib.
    }
    func addGHView() {
        let testView = GHView()
        testView.frame.size = CGSize(width: self.view.frame.width, height: 300)
        testView.backgroundColor = UIColor.blue
        testView.addView()
        view.addSubview(testView)
    }
    func addXib() {
//        let views = UINib(nibName: "FView", bundle: Bundle(for: type(of: self))).instantiate(withOwner: self, options: nil)
        let views = Bundle.main.loadNibNamed("FView", owner: self, options: nil)!
        let tmp = views.first as! UIView
        tmp.frame.size = CGSize(width: 300, height: 300)
        view.addSubview(tmp)

    }
    func addOtherFrameXib() {
        let views = Bundle.main.loadNibNamed("TestFramework.framework/TestView", owner: self, options: nil)!
        let tmp = views.first as! UIView
        tmp.frame.size = CGSize(width: 300, height: 300)
        view.addSubview(tmp)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

