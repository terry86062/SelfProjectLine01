//
//  ViewController.swift
//  SelfProjectLine01
//
//  Created by 黃偉勳 Terry on 2018/10/27.
//  Copyright © 2018年 Terry. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var chatTableView: UITableView!
    
    var person = ["諸葛亮","關羽","張飛","趙雲","呂布","貂蟬","孫策","孫尚香","大喬","小喬"]
    var personSay = [String]()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return person.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = chatTableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as! TableViewCell
        
        for i in 1...10 {
            personSay.append("吾乃\(person[i-1])是也！")
        }
        
        cell.initChatTableViewCell(imageName: person[indexPath.row], title: person[indexPath.row], sub: personSay[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DialogueVC()
        self.navigationController?.pushViewController(vc, animated: true)
        self.chatTableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "聊天"
        
        chatTableView.dataSource = self
        chatTableView.delegate = self
        
        let nibName = UINib(nibName: "TableViewCell", bundle: nil)
        chatTableView.register(nibName, forCellReuseIdentifier: "tableViewCell")
    }


}

