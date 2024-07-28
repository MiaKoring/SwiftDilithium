//
//  Secret.swift
//  
//
//  Created by Mia Koring on 29.07.24.
//

import Foundation

public extension SecretKey {
    var data: Data {
        Data(self.keyBytes)
    }
    
    var stringRepresentation: String {
        self.data.base64EncodedString()
    }
}
