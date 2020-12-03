import UIKit

public class Two {
    public init(_ input: String) {
        let spots = input.split(separator: "\n").map { Array(String($0))}
        let slopes = [(1,1),(3,1),(5,1),(7,1),(1,2)]
        
        let width = spots.first!.count
        var x = 0
        var y = 0
        var hits = 0
        var total = 1
        
        for slope in slopes {
            hits = 0
            x = 0
            y = 0
            while (y < spots.count) {
                if (spots[y][x % width] == "#") {
                    hits += 1
                }
                
                x += slope.0
                y += slope.1
                
                if (y >= spots.count) { break }
            }
            
            total *= hits
        }

        
        print(total)
    }
}
