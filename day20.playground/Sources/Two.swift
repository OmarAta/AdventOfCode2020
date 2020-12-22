import UIKit

public class Two {
    class Tile {
        let ID: Int
        let raw: String
        var hashCount = 0
        
        init(input: String) {
            ID = Int(input.filter(\.isNumber)) ?? 0
            raw = input.split(separator: "\n").dropFirst().joined(separator: "\n")
            let rows = input
                .split(separator: "\n")
                .dropFirst()
                .dropFirst()
                .dropLast()
            
            for row in rows {
                let trimmed = Array(row).dropFirst().dropLast()
                for char in trimmed {
                    if (char == "#") {
                        hashCount += 1
                    }
                }
            }
        }
    }
    
    public init(_ input: String) {
        let tiles = input.components(separatedBy: "\n\n").map {
            Tile(input: $0)
        }
        
        var result = 0
        
        for tile in tiles {
            result += tile.hashCount
        }
        
        print(result)
    }
}
