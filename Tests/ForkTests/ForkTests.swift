//
//  ForkTests.swift
//  SwiftDilithium
//
//  Created by Mia Koring on 29.07.24.
//

import XCTest

@testable import SwiftDilithium

final class ForkTests: XCTestCase {
    func testFork() {
        let pair = Dilithium.D5.keyPair()
        
        let pub = pair.pub.stringRepresentation
        let sec = pair.sec.stringRepresentation
        
        guard let pubKey = pub.dPublic else {
            XCTFail("Public key couldn't be reverted")
            return
        }
        guard let secKey = sec.dSecret else {
            XCTFail("Private key couldn't be reverted")
            return
        }
        
        XCTAssertTrue(pubKey == pair.pub)
        XCTAssertTrue(secKey == pair.sec)
    }
}
