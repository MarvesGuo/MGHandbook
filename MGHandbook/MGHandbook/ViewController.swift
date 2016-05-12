//
//  ViewController.swift
//  MGHandbook
//
//  Created by Marves Guo on 16/5/12.
//  Copyright © 2016年 Marves Guo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    
    internal var items : NSMutableDictionary = NSMutableDictionary()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initData()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //MARK: tableview dataSource & delegate
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        return 60;
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell = UITableViewCell()
        
        let label:UILabel = UILabel(frame:CGRectMake(20,10,300,40))
        
        label.text = items.allKeys[indexPath.row] as? String
        label.textColor = UIColor.redColor()
        
        cell.contentView.addSubview(label)
        
        return cell;
    }
    
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        if indexPath.row == 0
        {
            self.navigationController!.pushViewController(MGBasicSkilsViewController(), animated: true)
        }
        
    }
    
    
    
    
    func initData() {
        
        self.title = "MGHandbook"
        
        items =  [
            "基础（Basic Skills）":[
                "NSString",
                "NSData"
            ],
            "设计模式（Design Pattern）":[
                "MVC模式",
                "单例模式"
            ]
        ]
        
        NSUserDefaults().setObject(items, forKey: "tableItems")
    }



}

