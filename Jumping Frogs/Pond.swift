//
//  Pond.swift
//  Jumping Frogs
//
//  Created by Christopher Fonseka on 27/02/2017.
//  Copyright © 2017 ChristopherFonseka. All rights reserved.
//

import Foundation

struct Pond : Equatable
{
    let lilypads: [Lilypad]

    static func ==(lhs: Pond, rhs: Pond) -> Bool
    {
        if (lhs.lilypads.count != rhs.lilypads.count) { return false }

        for i in 0...lhs.lilypads.count
        {
            if (lhs.lilypads[i] != rhs.lilypads[i])
            {
                return false
            }
        }
        return true
    }

    static func !=(lhs: Pond, rhs: Pond) -> Bool
    {
        return !(lhs == rhs)
    }
}
