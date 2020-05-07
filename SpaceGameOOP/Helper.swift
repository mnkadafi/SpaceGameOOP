//
//  Helper.swift
//  SpaceGameOOP
//
//  Created by Mochamad Nurkhayal Kadafi on 06/05/20.
//  Copyright © 2020 Manusia Apple. All rights reserved.
//

import Foundation

func getUserInput() -> String{
    let standarInput = FileHandle.standardInput
    var input = NSString(data: standarInput.availableData, encoding: String.Encoding.utf8.rawValue)
    input = input!.trimmingCharacters(in: NSCharacterSet.newlines) as NSString
    
    return input! as String
}
