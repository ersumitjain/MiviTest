//
//  DataModel.swift
//  MiviTest
//
//  Created by Sumit on 06/05/18.
//  Copyright © 2018 Sumit. All rights reserved.
//

import Foundation
import SwiftyJSON

open class DataModel{
    
    open var type: String?
    open var id : String?
    open var attributesData : AttributeDataModel?
    
    
    required public init?(jsonObject: JSON) {
        type = jsonObject["type"].stringValue
        id = jsonObject["id"].stringValue
        attributesData = AttributeDataModel.init(jsonObject: jsonObject["attributes"])
    }
    
}

open class AttributeDataModel {
    
    open var contact_number: String?
    open var date_of_birth : String?
    open var email_address : String?
    open var email_subscription_status: String?
    open var first_name : String?
    open var last_name : String?
    open var next_billing_date: String?
    open var payment_type : String?
    open var title : String?
    open var unbilled_charges : String?
    
    
    required public init?(jsonObject: JSON) {
        contact_number = jsonObject["contact-number"].stringValue
        date_of_birth   = jsonObject["date-of-birth"].stringValue
        email_address = jsonObject["email-address"].stringValue
        email_subscription_status = jsonObject["email-subscription-status"].stringValue
        first_name = jsonObject["first-name"].stringValue
        last_name   = jsonObject["last-name"].stringValue
        next_billing_date = jsonObject["next-billing-date"].stringValue
        payment_type = jsonObject["payment-type"].stringValue
        title = jsonObject["title"].stringValue
        unbilled_charges = jsonObject["unbilled-charges"].stringValue
        
    }
    
    
    
}
