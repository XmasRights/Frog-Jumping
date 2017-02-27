//
//  JumpingFrogs.swift
//  Jumping Frogs
//
//  Created by Christopher Fonseka on 27/02/2017.
//  Copyright © 2017 ChristopherFonseka. All rights reserved.
//

import Foundation
import SearchTreeKit

struct JumpingFrogs
{
    typealias GameState = SearchNode<Pond>

    func play()
    {
        let lilypads  = createLilypads()
        let gameState = createGameState(lilypads: lilypads)

        print (gameState.value.lilypads)
    }

    private func createLilypads() -> [Lilypad]
    {
        var output = [Lilypad]()
        for _ in 0...5
        {
            output.append(Lilypad.Normal([Frog.Normal]))
        }
        return output
    }

    private func createGameState(lilypads: [Lilypad]) -> GameState
    {
        let pond = Pond(lilypads: lilypads)
        return GameState(pond)
    }


}
