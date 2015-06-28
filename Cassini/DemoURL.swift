//
//  DemoURL.swift
//
//  Created by CS193p Instructor.
//  Copyright (c) 2015 Stanford University. All rights reserved.
//

import Foundation

struct DemoURL {
    static let Stanford = NSURL(string: "http://comm.stanford.edu/wp-content/uploads/2013/01/stanford-campus.png")
    struct NASA {
        static let Cassini = NSURL(string: "http://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg")
        static let Earth = NSURL(string: "http://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg")
        static let Saturn = NSURL(string: "http://www.nasa.gov/sites/default/files/saturn_collage.jpg")
        
        static let FakeCassini = NSURL(string: "http://imgrt.pconline.com.cn/images/upload/upc/tx/wallpaper/1308/26/c3/spcgroup/24898122_1377487148526_1600x1000.jpg")
        static let FakeEarth = NSURL(string: "http://imgrt.pconline.com.cn/images/upload/upc/tx/wallpaper/1308/26/c3/spcgroup/24898122_1377487148538_1600x1000.jpg")
        static let FakeSaturn = NSURL(string: "http://imgrt.pconline.com.cn/images/upload/upc/tx/wallpaper/1308/26/c3/spcgroup/24898122_1377487148537_1600x1000.jpg")


    }
}
