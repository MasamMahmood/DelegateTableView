//
//  UnitViewController.swift
//  DelegateTableView
//
//  Created by Emre Türker on 10.12.2019.
//  Copyright © 2019 MasamMahmood. All rights reserved.
//

import UIKit

class UnitViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
        //var AppData : Unit?
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            tableView.dataSource = self
            tableView.delegate = self
            pullData()
        }
        
        //MARK:- JSON Data
        
        func pullData(){
            
            if let url = Bundle.main.url(forResource: "Unit", withExtension: "json") {
                do {
                    
                    let data = try Data(contentsOf: url)
                    let decoder = JSONDecoder()
                    let jsonData = try decoder.decode(Unit.self, from: data)
                    self.AppData = jsonData
                    self.tableView.reloadData()
                } catch {
                    print("error:\(error)")
                }
            }
            
        }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print(indexPath.row)
            print(indexPath.section)
         
         
         if let actionType = AppData?.sectionList?[indexPath.section].items?[indexPath.row].actionType {
         switch actionType {
                 
                 case 4: // phone call
                 print(actionType)
                 let phoneNumber = AppData?.sectionList?[indexPath.section].items?[indexPath.row].textValue
                 //print(phoneNumber ?? 0)
                 let arr = phoneNumber?.components(separatedBy: .whitespaces)
                 let final = arr?.joined()
                 let phone = "tel://"+final!
                 guard let number = URL(string: phone) else { return }
                 if #available(iOS 10, *) {
                     UIApplication.shared.open(number)
                 } else {
                     UIApplication.shared.openURL(number)
                 }
                 
                 case 14:
                     print(actionType)
                     
                 
                 case 21:
                 print(actionType)
                 
             
                 default:
                     print(actionType)
             
             }
         }
    
     }


    }

