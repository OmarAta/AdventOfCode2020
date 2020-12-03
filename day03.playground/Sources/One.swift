import UIKit

public class One {
    public init(_ input: String) {
        let spots = input.split(separator: "\n").map { Array(String($0))}
        let width = spots.first!.count
        var x = 0
        var y = 0
        var hits = 0
        
        while (y < spots.count) {
            if (spots[y][x % width] == "#") {
                hits += 1
            }
            
            x += 3
            y += 1
        }
        
        print(hits)
    }
}
