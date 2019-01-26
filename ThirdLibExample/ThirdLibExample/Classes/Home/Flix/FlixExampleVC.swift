//
//  FlixExampleVC.swift
//  ThirdLibExample
//
//  Created by liuhongli on 2019/1/26.
//  Copyright © 2019年 liuhongli. All rights reserved.
//

import UIKit

class FlixExampleVC: SWBaseTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "Flix"
    }
    
    let KFlixIdentifier = "FlixIdentifier"
    
    override func tableViewData() {
        let data1 = SWTableViewDataStruct.init(title: "FirstFlixExample", identifier: KFlixIdentifier)
        dataList = [data1]
    }
}

extension FlixExampleVC {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if (dataList[indexPath.row].identifier .elementsEqual(KFlixIdentifier)) {
            let vc:FirstFlixExampleVC = FirstFlixExampleVC.init()
            pushViewController(vc: vc, animated: true)
        }
    }
}
