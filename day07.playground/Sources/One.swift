import UIKit

public class One {
    struct Bag {
        var color: String
        var inside = [String : Int]()
    }
    
    var result = Set<String>()
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
        
        hasPath(from: "shiny gold")
        print(result.count)
    }
    
    private func hasPath(from: String) {
        for bag in bags {
            if (bag.inside.keys.contains(from)) {
                result.insert(bag.color)
                hasPath(from: bag.color)
            }
        }
    }
}
