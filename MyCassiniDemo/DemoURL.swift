//
//  DemoURL.swift
//  MyCassiniDemo
//
//  Created by VoiceBeer on 2017/9/12.
//  Copyright © 2017年 VoiceBeer. All rights reserved.
//

import Foundation

struct DemoURL {
    static let Ningbo = URL(string: "https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/crop%3D0%2C0%2C1150%2C759%3Bc0%3Dbaike150%2C5%2C5%2C150%2C50/sign=ce026f86c11349546a51b2246b7ebe68/7dd98d1001e93901b1e25a3971ec54e737d196d1.jpg")
    
    static var NASA: Dictionary<String, URL> = {
        let NASAURLStrings = [
            "Cassini" : "https://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
            "Earth" : "https://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
            "Saturn" : "https://www.nasa.gov/sites/default/files/saturn_collage.jpg"
        ]
        var urls = Dictionary<String, URL>()
        for (key, value) in NASAURLStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}
