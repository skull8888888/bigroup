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
    case objects = "/api/v1/salesbigroup/real_estate"
    case myApars = "/api/v1/MobileClient/Property"
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
    
    static func get(_ type: LinkType, _ parameters: Parameters? = ["": ""] , _ completion: @escaping (Any) -> ()){
        
        Model.token { token in
            
            let headers: HTTPHeaders = [
                "token": token
            ]
            
            Alamofire.request("http://webapi.bi-group.org\(type.rawValue)", method: .get, parameters: parameters, headers: headers).responseJSON { response in
                
                
                if let json = response.result.value {
                    completion(json)
                } else {
                    print("bad json", response.result)
                }
                
            }
            
        }
        
    }
    
}
















