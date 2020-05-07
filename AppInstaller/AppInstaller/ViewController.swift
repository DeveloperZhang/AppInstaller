//
//  ViewController.swift
//  AppInstaller
//
//  Created by ZhangYu on 2020/4/21.
//  Copyright © 2020 JIT. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    let apiToken = "e11b6290f3f84c72cc19bd6ea2de0df9"
    let apiId = "5e4b9bc4b2eb4622f39e439b"
    var downloadToken = ""


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.downloadAction("")
    }

    @IBAction func downloadAction(_ sender: Any) {
        let downloadStr = "http://d.7short.com/signTest"
        let url:NSURL = NSURL(string:downloadStr)!
        UIApplication.shared.open(url as URL, options: [:],
        completionHandler: {
        (success)in
            print("Open \(url): \(success)")
        })
//        let appId:String = "5e4b9bc4b2eb4622f39e439b"
//        //接口地址
//        let urls:String = "http://api.bq04.com/apps/\(appId)/download_token?api_token=e11b6290f3f84c72cc19bd6ea2de0df9"
//        //参数
//        let parameters:Dictionary = ["":""]
//        //Alamofire 请求实例
//        AF.request(URL(string: urls)!, method: .get, parameters: parameters)
//                        .responseString { (responses) in
//            let ste:String = responses.value ?? ""
//            let dic:NSDictionary = self.getDictionaryFromJSONString(jsonString: ste)
//            let download_token:String = dic["download_token"] as! String
//            print(dic["download_token"] ?? "")
//            let downloadStr = "itms-services://?action=download-manifest&url=https%3A%2F%2Fdownload.bq04.com%2Fapps%2F%3A\(appId)%2Finstall%3Fdownload_token%3D\(download_token)"
//            let url:NSURL = NSURL(string:downloadStr)!
//            UIApplication.shared.open(url as URL, options: [:],
//            completionHandler: {
//            (success)in
//            print("Open \(url): \(success)")
//            })
//
//        }
    }
    
    // JSONString转换为字典
     
    func getDictionaryFromJSONString(jsonString:String) ->NSDictionary{
     
        let jsonData:Data = jsonString.data(using: .utf8)!
     
        let dict = try? JSONSerialization.jsonObject(with: jsonData, options: .mutableContainers)
        if dict != nil {
            return dict as! NSDictionary
        }
        return NSDictionary()
         
     
    }
}
    



