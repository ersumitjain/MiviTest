//
//  IncludedModel.swift
//  MiviTest
//
//  Created by Sumit on 06/05/18.
//  Copyright © 2018 Sumit. All rights reserved.
//

import Foundation
import SwiftyJSON

open class IncludedModel{
    
    open var type: String?
    open var id : String?
    open var attributes : AttributeModel?
   // open var links : LoginResultModel?
   // open var relationships : LoginResultModel?
    
    open class func modelsFromDictionaryArray(_ array:[JSON]) -> [IncludedModel]
    {
        var models:[IncludedModel] = []
        for item in array
        {
            models.append(IncludedModel.init(jsonObject: item.dictionaryValue)!)
        }
        return models
    }
    
    
    required public init?(jsonObject: [String:JSON]) {
        
     //   type = jsonObject["type"]?.string
       // id = jsonObject["id"]?.string
        
        type = jsonObject["type"]?.stringValue
        id = jsonObject["id"]?.stringValue
        attributes = AttributeModel.init(jsonObject: jsonObject["attributes"]!)
        
    }
    
}


open class AttributeModel {
    
    open var credit: String?
    open var credit_expiry : String?
    open var data_usage_threshold : String?
    open var msn: String?
    open var data_balance: String?
    open var expiry_date : String?
    open var name : String?
    open var price: String?
    
    
    required public init?(jsonObject: JSON) {
        credit = jsonObject["credit"].stringValue
        credit_expiry = jsonObject["credit-expiry"].stringValue
        data_usage_threshold = jsonObject["data-usage-threshold"].stringValue
        msn = jsonObject["msn"].stringValue
        data_balance = jsonObject["included-data-balance"].stringValue
        expiry_date = jsonObject["expiry-date"].stringValue
        name = jsonObject["name"].stringValue
        price = jsonObject["price"].stringValue
        
        
        
    }
    
    
    
}
