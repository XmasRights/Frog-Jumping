//
//  Frog.swift
//  Jumping Frogs
//
//  Created by Christopher Fonseka on 27/02/2017.
//  Copyright © 2017 ChristopherFonseka. All rights reserved.
//

import Foundation

enum Frog : CustomStringConvertible
{
    case Normal, Queen, Lazy

    var description: String
    {
        switch self
        {
            case .Normal: return "Frog"
            case .Queen:  return "Queen"
            case .Lazy:   return "Lazy Frog"
        }
    }
}
