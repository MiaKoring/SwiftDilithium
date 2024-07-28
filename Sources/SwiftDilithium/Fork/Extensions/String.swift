//
//  String.swift
//  
//
//  Created by Mia Koring on 29.07.24.
//

import Foundation

public extension String {
    var dSecret: SecretKey? {
        guard let data = Data(base64Encoded: self) else { return nil }
        return try? SecretKey(keyBytes: data.bytes)
    }
    
    var dPublic: PublicKey? {
        guard let data = Data(base64Encoded: self) else { return nil }
        return try? PublicKey(keyBytes: data.bytes)
    }
}
