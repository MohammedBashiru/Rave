//
//  RavePayService.swift
//  RaveMobile
//
//  Created by Olusegun Solaja on 19/07/2017.
//  Copyright © 2017 Olusegun Solaja. All rights reserved.
//

import UIKit
import Alamofire

class RavePayService: NSObject {
    
    public class func queryTransaction(_ bodyParam:Dictionary<String,String>,resultCallback:@escaping (_ result:Dictionary<String,AnyObject>?) -> Void ,errorCallback:@escaping (_ err:String) -> Void ){
        let manager = Alamofire.Session.default
        manager.session.configuration.timeoutIntervalForRequest = 30
        manager.session.configuration.timeoutIntervalForResource = 30
        manager.request(URLHelper.getURL("QUERY_TRANSACTION"),method: .post, parameters: bodyParam).responseJSON {
            (res) -> Void in
            
            switch res.result {
                case .success(let value):
                    let result = value as? Dictionary<String,AnyObject>
                    resultCallback(result)
                case .failure(let error):
                    errorCallback(error.localizedDescription)
            }
        }
        
        
    }
    public class func queryMpesaTransaction(_ bodyParam:Dictionary<String,String>,resultCallback:@escaping (_ result:Dictionary<String,AnyObject>?) -> Void ,errorCallback:@escaping (_ err:String) -> Void ){
        let manager = Alamofire.Session.default
        manager.session.configuration.timeoutIntervalForRequest = 30
        manager.session.configuration.timeoutIntervalForResource = 30
        manager.request(URLHelper.getURL("QUERY_TRANSACTION_V2"),method: .post, parameters: bodyParam).responseJSON {
            (res) -> Void in
            
            switch res.result {
            case .success(let value):
                let result = value as? Dictionary<String,AnyObject>
                resultCallback(result)
            case .failure(let error):
                errorCallback(error.localizedDescription)
            }
        }
        
        
    }
    class func getFee(_ bodyParam:Dictionary<String,String>,resultCallback:@escaping (_ result:Dictionary<String,AnyObject>?) -> Void ,errorCallback:@escaping (_ err:String) -> Void ){
        let manager = Alamofire.Session.default
        manager.session.configuration.timeoutIntervalForRequest = 30
        manager.session.configuration.timeoutIntervalForResource = 30
        manager.request(URLHelper.getURL("FEE"),method: .post, parameters: bodyParam).responseJSON {
            (res) -> Void in
            
            switch res.result {
            case .success(let value):
                let result = value as? Dictionary<String,AnyObject>
                resultCallback(result)
            case .failure(let error):
                errorCallback(error.localizedDescription)
            }
        }
        
        
    }
    class func getBanks(resultCallback:@escaping (_ result:[Bank]?) -> Void ,errorCallback:@escaping (_ err:String) -> Void ){
        let manager = Alamofire.Session.default
        manager.session.configuration.timeoutIntervalForRequest = 30
        manager.session.configuration.timeoutIntervalForResource = 30
        manager.request(URLHelper.getURL("BANK_LIST"),method: .get, parameters: nil).responseJSON {
            (res) -> Void in
            
            switch res.result {
            case .success(let value):
                let result = value as? Array<Bank>
                resultCallback(result)
            case .failure(let error):
                errorCallback(error.localizedDescription)
            }
        }
        
        
    }
    public class func charge(_ bodyParam:Dictionary<String,Any>,resultCallback:@escaping (_ Result:Dictionary<String,AnyObject>?) -> Void ,errorCallback:@escaping (_ err:String) -> Void ){
        let manager = Alamofire.Session.default
        manager.session.configuration.timeoutIntervalForRequest = 30
        manager.session.configuration.timeoutIntervalForResource = 30
        manager.request(URLHelper.getURL("CHARGE_CARD"),method: .post, parameters: bodyParam).responseJSON {
            (res) -> Void in
            
            switch res.result {
            case .success(let value):
                let result = value as? Dictionary<String,AnyObject>
                resultCallback(result)
            case .failure(let error):
                errorCallback(error.localizedDescription)
            }
        }
        
        
    }
    public class func chargeWithToken(_ bodyParam:Dictionary<String,Any>,resultCallback:@escaping (_ Result:Dictionary<String,AnyObject>?) -> Void ,errorCallback:@escaping (_ err:String) -> Void ){
        let manager = Alamofire.Session.default
        manager.session.configuration.timeoutIntervalForRequest = 30
        manager.session.configuration.timeoutIntervalForResource = 30
        manager.request(URLHelper.getURL("CHARGE_WITH_TOKEN"),method: .post, parameters: bodyParam).responseJSON {
            (res) -> Void in
            
            switch res.result {
            case .success(let value):
                let result = value as? Dictionary<String,AnyObject>
                resultCallback(result)
            case .failure(let error):
                errorCallback(error.localizedDescription)
            }
        }
        
        
    }
    
    public class func validateCardOTP(_ bodyParam:Dictionary<String,String>,resultCallback:@escaping (_ Result:Dictionary<String,AnyObject>?) -> Void ,errorCallback:@escaping (_ err:String) -> Void ){
        let manager = Alamofire.Session.default
        manager.session.configuration.timeoutIntervalForRequest = 30
        manager.session.configuration.timeoutIntervalForResource = 30
        manager.request(URLHelper.getURL("VALIDATE_CARD_OTP"),method: .post, parameters: bodyParam).responseJSON {
            (res) -> Void in
            
            switch res.result {
            case .success(let value):
                let result = value as? Dictionary<String,AnyObject>
                resultCallback(result)
            case .failure(let error):
                errorCallback(error.localizedDescription)
            }
        }
        
    }
    public class func validateAccountOTP(_ bodyParam:Dictionary<String,String>,resultCallback:@escaping (_ Result:Dictionary<String,AnyObject>?) -> Void ,errorCallback:@escaping (_ err:String) -> Void ){
        let manager = Alamofire.Session.default
        manager.session.configuration.timeoutIntervalForRequest = 30
        manager.session.configuration.timeoutIntervalForResource = 30
        manager.request(URLHelper.getURL("VALIDATE_ACCOUNT_OTP"),method: .post, parameters: bodyParam).responseJSON {
            (res) -> Void in
            
            switch res.result {
            case .success(let value):
                let result = value as? Dictionary<String,AnyObject>
                resultCallback(result)
            case .failure(let error):
                errorCallback(error.localizedDescription)
            }
        }
        
        
    }
}
