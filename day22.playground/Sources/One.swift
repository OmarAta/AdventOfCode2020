import UIKit

public class One {
    public init(_ input: String) {
        let players = input.components(separatedBy: "\n\n")
        var player1 = players.first!.split(separator: "\n").dropFirst().map { Int($0)! }
        var player2 = players.last!.split(separator: "\n").dropFirst().map { Int($0)! }
        
        while !(player1.isEmpty || player2.isEmpty) {
            let card1 = player1.removeFirst()
            let card2 = player2.removeFirst()
            
            if (card1 > card2) {
                player1 += [card1, card2]
            } else {
                player2 += [card2, card1]
            }
        }
        
        var result = 0
        let deck = player1 + player2
        for (i, card) in deck.enumerated() {
            result += ((deck.count - i) * card)
        }
        
        print(result)
    }
}
