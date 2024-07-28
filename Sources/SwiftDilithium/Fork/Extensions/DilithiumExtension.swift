//
//  Dilithium.swift
//  
//
//  Created by Mia Koring on 29.07.24.
//

public extension Dilithium {
    func keyPair() -> DKeyPair {
        let (sk, pk) = self.GenerateKeyPair()
        return DKeyPair(sec: sk, pub: pk)
    }
}
