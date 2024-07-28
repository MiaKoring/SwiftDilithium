//
//  Data.swift
//  
//
//  Created by Mia Koring on 29.07.24.
//

import Foundation

public extension Data {
    var bytes: Bytes {
       Bytes(self)
    }
}
