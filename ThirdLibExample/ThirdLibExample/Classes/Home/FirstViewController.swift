//
//  FirstViewController.swift
//  ThirdLibExample
//
//  Created by liuhongli on 2019/1/26.
//  Copyright © 2019年 liuhongli. All rights reserved.
//

import UIKit

class FirstViewController: SWBaseTableViewController {

    let KFlixIdentifier = "FlixIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "ThirdLibExample"
        tableViewData()
    }
    
    override func tableViewData() {
        let data0 = SWTableViewDataStruct.init(title: "Flix", identifier: KFlixIdentifier)
        
        self.dataList = [data0]
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        var vc = UIViewController.init()
        switch dataList[indexPath.row].identifier {
        case KFlixIdentifier:
            vc = FlixExampleVC.init()
        default:
            vc = MapClusterViewController.init()
        }
        
        pushViewController(vc: vc, animated: true)
        
    }


}
