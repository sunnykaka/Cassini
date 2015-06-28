//
//  ViewController.swift
//  Cassini
//
//  Created by liubin on 15/6/27.
//  Copyright (c) 2015年 liubin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let ivc = segue.destinationViewController as? ImageViewController {
            if let id = segue.identifier {
                switch id {
                case "showEarth":
                    ivc.imageURL = DemoURL.NASA.FakeEarth
                    ivc.title = "EARTH"
                case "showCassini":
                    ivc.imageURL = DemoURL.NASA.FakeCassini
                    ivc.title = "CASSINI"
                case "showSaturn":
                    ivc.imageURL = DemoURL.NASA.FakeSaturn
                    ivc.title = "SATURN"
                default: break
                }
            }
        }
    }


}

