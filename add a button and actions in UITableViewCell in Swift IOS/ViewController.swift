//
//  ViewController.swift
//  add a button and actions in UITableViewCell in Swift IOS
//
//  Created by mymac on 26/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    var list = ["raju","Ram","Rajesh","Mani","Ramesh","sabari","raju","Ram","Rajesh","Mani","Ramesh","sabari","raju","Ram","Rajesh","Mani","Ramesh","sabari"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //tableview.delegate = self
        tableview.dataSource = self
        registercells()
    }

    func registercells(){
        tableview.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    }
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.titleLabel?.text = list[indexPath.row]
        cell.subscribeBtn = {[unowned self] in
            let list = self.list[indexPath.row]
            let alert = UIAlertController(title: "Subcribed!", message: "subcribed to \(list)", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "ok", style: .default,handler: nil)
            alert.addAction(okAction)
            present(alert,animated: true,completion: nil)
        }
        return cell
    }
    
    
}
