//
//  Model.swift
//  BIGroup
//
//  Created by Robert Kim on 7/21/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import Foundation
import Alamofire

enum LinkType: String {
    case objects = "http://webapi.bi-group.org/api/v1/MobileClient/realpropertylist"
    case apars = ""
}

struct Model {
    
    
    static func token(callback: @escaping (String)->()){
    
        
        let headers: HTTPHeaders = [
            "authorization": "Basic WmVyb1RvT25lTGFiOjEyMzQ1Ng=="
        ]
        
        Alamofire.request("http://webapi.bi-group.org/Authenticate", method: .post, headers: headers).response { response in
            
            if let heads = response.response?.allHeaderFields as? [String: String], let token = heads["Token"] {
                callback(token)
            }
            
        }
        
    }
    
    static func get(_ type: LinkType ){
        
        Model.token { token in
            
            let headers: HTTPHeaders = [
                "token": token
            ]
            
            Alamofire.request(type.rawValue, method: .get, headers: headers).responseJSON { response in
                
                
                if let json = response.result.value {
                    print("JSON: \(json)")
                } else {
                    print("bad json", response.result)
                }
                
            }
            
        }
        
    }
    
}
