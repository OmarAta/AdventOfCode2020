import UIKit

public class Two {
    public init(_ input: String) {
        let decks = input.components(separatedBy: "\n\n")
        let deck0 = decks.first!.split(separator: "\n").dropFirst().map { Int($0)! }
        let deck1 = decks.last!.split(separator: "\n").dropFirst().map { Int($0)! }
        
        let winner = playRound(decks: [deck0, deck1])
        if let deck = winner.1 {
            var result = 0
            for (i, card) in deck.enumerated() {
                result += ((deck.count - i) * card)
            }
            print(result)
        }
    }
    
    private func playRound(decks: [[Int]], rounds: [[[Int]]] = [[[Int]]](), game: Int = 1) -> (Int, [Int]?) {
        var deck0 = decks[0]
        var deck1 = decks[1]
        
        
        for round in rounds {
            if (round == decks) {
                return (0, (game == 1) ? deck0 : nil)
            }
        }
        let currentRounds = rounds + [decks]
                
//        print("--- Round \(currentRounds.count) (Game \(game)) ---")
//        print(deck0)
//        print(deck1)
        
        if (deck0.isEmpty) { return (1, (game == 1) ? deck1 : nil) }
        if (deck1.isEmpty) { return (0, (game == 1) ? deck0 : nil) }

        let card0 = deck0.removeFirst()
        let card1 = deck1.removeFirst()
        
        if (deck0.count >= card0 && deck1.count >= card1) {
            //play another round
            let result = playRound(decks: [Array(deck0[0 ..< card0]), Array(deck1[0 ..< card1])], game: game + 1)
            if (result.1 != nil) { return result }
            
            if (result.0 == 0) {
                deck0 += [card0, card1]
            } else {
                deck1 += [card1, card0]
            }
        } else {
            if (card0 > card1) { deck0 += [card0, card1] }
            if (card0 < card1) { deck1 += [card1, card0] }
        }
        
        return playRound(decks: [deck0, deck1], rounds: currentRounds, game: game)
    }
}
