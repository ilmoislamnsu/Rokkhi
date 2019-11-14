//
//  InvitedVC.swift
//  rokkhiOffice
//
//  Created by Shafiqul  Islam on 11/13/19.
//  Copyright © 2019 Shafiqul  Islam. All rights reserved.
//

import UIKit

class InvitedVC: UIViewController , UITableViewDataSource , UITableViewDelegate{
    
  
    
    @IBOutlet weak var invitedTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = #imageLiteral(resourceName: "i10")
        
        invitedTable.dataSource = self
        invitedTable.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return DataService.instance.getInviteds().count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          if let cell = tableView.dequeueReusableCell(withIdentifier: "InvitedCell") as? InvitedCell {
              let invited = DataService.instance.getInviteds()[indexPath.row]
              cell.update(invited: invited)
              return cell
          } else {
              return InvitedCell()
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

}
