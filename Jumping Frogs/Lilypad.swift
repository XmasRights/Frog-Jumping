//
//  Lilypad.swift
//  Jumping Frogs
//
//  Created by Christopher Fonseka on 27/02/2017.
//  Copyright © 2017 ChristopherFonseka. All rights reserved.
//

import Foundation

enum Lilypad
{
    case Waterlogged
    case Normal([Frog])
}

extension Lilypad: CustomStringConvertible
{
    var description: String
    {
        switch self
        {
        case .Waterlogged: return "X"
        case .Normal(let frogs):
            var output = "["

            for frog in frogs
            {
                output += frog.description
                output += ","
            }
            return output.removeLastCharacter() + "]"
        }
    }
}

extension Lilypad: Equatable
{
    static func ==(lhs: Lilypad, rhs: Lilypad) -> Bool
    {
        switch (lhs, rhs)
        {
        case (.Waterlogged, .Waterlogged):
            return true

        case (let .Normal(left), let .Normal(right)):
            return left == right

        default:
            return false
        }
    }
}
