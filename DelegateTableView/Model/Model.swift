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
