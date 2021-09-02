//
//  RootViewController.swift
//  AppInstaller
//
//  Created by ZhangYu on 2020/5/7.
//  Copyright © 2020 JIT. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    var array:[String] = ["纯代码自定义cell", "nib自定义cell"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // 每个分区行数（默认分区为一个）
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    // 行高
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60.0
    }
    // cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "CellIdentifier")
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }
    // cell点击事件处理
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
//            let vc = CustomCellController()
//            self.navigationController?.pushViewController(vc, animated: true)
            break
        case 1:
//            let vc = NibCellController()
//            self.navigationController?.pushViewController(vc, animated: true)
            break
        default:
            
            break
        }
    }

}
