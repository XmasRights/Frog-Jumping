//
//  String_Extension.swift
//  Jumping Frogs
//
//  Created by Christopher Fonseka on 27/02/2017.
//  Copyright © 2017 ChristopherFonseka. All rights reserved.
//

import Foundation

extension String
{
    func removeLastCharacter() -> String
    {
        let endIndex = self.index(before: self.endIndex)
        return self.substring(to: endIndex)
    }
}
