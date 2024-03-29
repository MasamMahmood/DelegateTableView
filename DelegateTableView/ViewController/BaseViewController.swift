//
//  BaseViewController.swift
//  DelegateTableView
//
//  Created by Emre Türker on 10.12.2019.
//  Copyright © 2019 MasamMahmood. All rights reserved.
//

import UIKit

protocol ModelDelegate {
    func takeAction(model: AnyObject)
}

class BaseViewController: UIViewController {
    
    var modelDelegate: ModelDelegate?
    var AppData: Unit?
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
  
}

extension BaseViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40

    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return AppData?.sectionList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return AppData?.sectionList?[section].title
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData?.sectionList?[section].items?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         
        let cell = UITableViewCell()
         cell.backgroundColor = UIColor.clear
         cell.selectionStyle = .none
         let grayBox = UIView(frame: CGRect(x: 5, y: 0, width: self.view.frame.size.width - 11 , height: 50))
         
         grayBox.layer.cornerRadius = 5
         grayBox.layer.borderColor = UIColor(red:0.80, green:0.80, blue:0.80, alpha:1.0).cgColor
         grayBox.layer.borderWidth = 1.0
         
         let lbl_Title = UILabel()
         lbl_Title.frame = CGRect(x: 15, y: 10, width: 150, height: 30)
         grayBox.addSubview(lbl_Title)
         
         
         let button = UIButton()
         button.frame = CGRect(x: self.view.frame.size.width - 35, y: 15, width: 20, height: 20)
         button.setImage(UIImage(named: "rightArrow")?.withRenderingMode(.alwaysOriginal), for: .normal)
         grayBox.addSubview(button)
         
         
         let lblValue = UILabel()
         lblValue.frame = CGRect(x: self.view.frame.size.width - 270, y: 10, width: 250, height: 30)
         grayBox.addSubview(lblValue)
         lblValue.textAlignment = .right
         
         
         
         lbl_Title.text = "\(AppData?.sectionList?[indexPath.section].items?[indexPath.row].textField ?? "")"
         lbl_Title.textColor = UIColor.black
         lbl_Title.font = UIFont(name: "Arial", size: 14.0)
         
         
        grayBox.backgroundColor = .systemGray4
         
         if (AppData?.sectionList?[indexPath.section].items?[indexPath.row].textValue != nil){
             
             
             button.isHidden = true
             
             
             lblValue.text = "\(AppData?.sectionList?[indexPath.section].items?[indexPath.row].textValue ?? "")"
             
            lblValue.textColor = .black
             lblValue.font = UIFont(name: "Arial", size: 12.0)
        }
         
         if (lbl_Title.text == "Sayaç G4") {
             button.isHidden = false
             lblValue.frame = CGRect(x: self.view.frame.size.width - 288, y: 10, width: 250, height: 30)
         }
         
         if (lbl_Title.text == "Sayaç No") {
             button.isHidden = false
             lblValue.frame = CGRect(x: self.view.frame.size.width - 288, y: 10, width: 250, height: 30)
         }
         
        
         
         if (lbl_Title.text == "Kombi") {
             button.isHidden = false
             lblValue.frame = CGRect(x: self.view.frame.size.width - 288, y: 10, width: 250, height: 30)
         }
         if (lbl_Title.text == "Ocak") {
             button.isHidden = false
             lblValue.frame = CGRect(x: self.view.frame.size.width - 288, y: 10, width: 250, height: 30)
         }
         
         
         cell.contentView.addSubview(grayBox)
         
         return cell
     }
    
}
