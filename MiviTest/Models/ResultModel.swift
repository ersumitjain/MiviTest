//
//  ResultModel.swift
//  MiviTest
//
//  Created by Sumit on 06/05/18.
//  Copyright © 2018 Sumit. All rights reserved.
//

import Foundation
import SwiftyJSON

open class ResultModel{
    
    open var data : DataModel?
    open var included : [IncludedModel]?
    
    
    required public init?(jsonObject: JSON) {
        
        data = DataModel.init(jsonObject: jsonObject["data"])
        
        let value = jsonObject["included"].arrayValue
        included = IncludedModel.modelsFromDictionaryArray(value)
        
    }

}

