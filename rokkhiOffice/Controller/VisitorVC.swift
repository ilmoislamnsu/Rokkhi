//
//  VisitorVC.swift
//  rokkhiOffice
//
//  Created by Shafiqul  Islam on 11/13/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//

import UIKit

class VisitorVC: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    
    
    //Outlets
    
    
    @IBOutlet weak var visitorTable: UITableView!
    
    
    
    
    
    //Codes
    
    override func viewDidLoad() {
        super.viewDidLoad()
        visitorTable.dataSource = self
        visitorTable.delegate = self

        // Do any additional setup after loading the view.
    }
    
    
    
    
    
    //Functions Generated After adding Two Protocols Named "UITableViewDataSource , UITableViewDelegate"
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getVisitors().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "VisitorCell") as? VisitorCell {
            let visitor = DataService.instance.getVisitors()[indexPath.row]
            cell.updateViews(visitor: visitor)
            return cell
        } else {
            return VisitorCell()
        }
    }
    
}
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


