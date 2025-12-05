//
//  ArithmeticOperation.swift
//  Calculator
//
//  Created by Tawhid on 15/11/25.
//

import Foundation


enum ArithmeticOperation: CaseIterable, CustomStringConvertible{
    case addition, subtraction, multiplication, division
    
    var description: String{
        switch self{
        case .addition:
            return "+"
        case .subtraction:
            return "-"
        case .multiplication:
            return "*"
        case .division:
            return "/"
        }
    }
}
