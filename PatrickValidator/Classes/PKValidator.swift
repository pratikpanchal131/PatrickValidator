//
//  PKValidator.swift
//  Pods
//
//  Created by indianic on 16/03/17.
//
//

import Foundation


class PKValidator
{

    static let validator = PKValidator()
    
   public func isValidEmail(testStr:String) -> Bool {
        // print("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
}
