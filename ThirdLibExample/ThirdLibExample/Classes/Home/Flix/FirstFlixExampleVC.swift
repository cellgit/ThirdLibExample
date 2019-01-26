//
//  FirstFlixExample.swift
//  ThirdLibExample
//
//  Created by liuhongli on 2019/1/26.
//  Copyright © 2019年 liuhongli. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class FirstFlixExampleVC: SWBaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "First Flix"
        
        setupUI()
    }
    
    func setupUI() {
        let a: CGFloat = 60
        let frame = CGRect(x: self.view.center.x - a/2, y: self.view.center.y - a/2, width: a, height: a)
        let type = NVActivityIndicatorType.circleStrokeSpin
        let color = UIColor.magenta
        let padding: CGFloat = 10
        let activityIndicatorView = NVActivityIndicatorView(frame: frame, type: type, color: color, padding: padding)
        self.view.addSubview(activityIndicatorView)
        
        activityIndicatorView.startAnimating()
        
    }
    
    
    

}
