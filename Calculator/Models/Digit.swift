//
//  Digit.swift
//  Calculator
//
//  Created by Tawhid on 15/11/25.
//

import Foundation

enum Digit: Int, CaseIterable, CustomStringConvertible{
    case zero, one , two, three, four, five, six, seven, eight, nine
    
    var description: String{
        "\(rawValue)"
    }
}
