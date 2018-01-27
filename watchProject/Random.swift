//
//  Random.swift
//  watchProject
//
//  Created by Braden Bowdish on 1/27/18.
//  Copyright © 2018 Braden Bowdish. All rights reserved.
//

import Foundation

/// Get a random number between two bounds.
func getRandom(lowerBound: UInt32, upperBound: UInt32) -> Int{
    let uniformInt: UInt32 = (upperBound - lowerBound) + 1
    return Int(arc4random_uniform(uniformInt) + lowerBound);
}

func getRandomBool() -> Bool {
    return arc4random_uniform(2) == 1
}
