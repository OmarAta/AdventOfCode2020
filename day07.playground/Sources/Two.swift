import UIKit

public class Two {
    struct Bag {
        var color: String
        var inside = [String : Int]()
    }
    
    var result = 0
    var bags = [Bag]()

    public init(_ input: String) {
        let rules = input.components(separatedBy: "\n").dropLast().map { $0.split(separator: " ") }

        for rule in rules {
            var bag = Bag(color: rule[0...1].joined(separator: " "))
            let inners = rule.dropFirst(4).joined(separator: " ").split(separator: ",").map { $0.split(separator: " ") }
            for inner in inners {
                if let count = Int(inner[0]) {
                    bag.inside[inner[1...2].joined(separator: " ")] = count
                }
            }
            
            bags.append(bag)
        }
        
        print(countInners(from: "shiny gold"))
    }
    
    private func countInners(from: String) -> Int {
        for bag in bags where bag.color == from {
            if (bag.inside.isEmpty) {
                return 0
            } else {
                var count = 0
                for inner in bag.inside {
                    count += inner.value + (inner.value * countInners(from: inner.key))
                }
                return count
            }
        }
        
        return 0
    }
}
