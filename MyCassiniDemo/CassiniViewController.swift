//
//  CassiniViewController.swift
//  MyCassiniDemo
//
//  Created by VoiceBeer on 2017/9/14.
//  Copyright © 2017年 VoiceBeer. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let url = DemoURL.NASA[segue.identifier ?? ""] {
            if let imageVC = (segue.destination.contents as? ImageViewController) {
                imageVC.imageURL = url
                imageVC.title = (sender as? UIButton)?.currentTitle
            }
        }
    }
}

extension UIViewController {
    var contents: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
        } else {
            return self
        }
    }
}
