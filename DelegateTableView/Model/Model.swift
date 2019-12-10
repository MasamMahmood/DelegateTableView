//
//  Model.swift
//  DelegateTableView
//
//  Created by Emre Türker on 10.12.2019.
//  Copyright © 2019 MasamMahmood. All rights reserved.
//

import Foundation

struct AppointmentDetail : Codable {
    
    let projectId : Int?
    let address : String?
    let appointmentDate : String?
    let appointmentType : String?
    let appointmentId : Int?
    let buildingCode : String?
    let projectName : String?
    let projectNo : String?
    let projectType : String?
    let sectionList : [SectionList]?
    let isSuccess : Bool?
    let message : String?
    let statusCode : Int?
    
}

struct Unit : Codable {
    
    var sectionList : [SectionList]?
    
}

struct SectionList : Codable {
    
    let title : String?
    var items : [Item]?
    
}

struct Item : Codable {
    
    let actionType : Int?
    let actionUrl : String?
    let bgColor : String?
    let booleanValue : Bool?
    var textField : String?
    var textValue : String?
    let unitId : Int?
    let latitude : Double?
    let longitude : Double?
    let actionParamData: String?
    let actionTitle: String?
    let pickList: [SectionList]?
    let multiSelect: Bool?
    let selectedValue: [String]?
    let version: Int?
    let masterId: Int?
    let itemValue: String?
}

//MARK: - Action Types 

 // Action Types for delegates.
//0 - > (Unit detail)
//1 - > (Image)
//2 - > (Pdf)
//3 - > (Map)
//4 - > (Phone call)
//5 - > (Webview)
//6 - > (Content)
//7 - > (Barcode)
//8 - > (Barcode and manual input)
//9 - > (Number)
//10 - >(Number decimal)
//11 - > (Text)
//12 - > True/False (Boolean)
//13 - > (Calendar)
//14 - > (Pick list)
