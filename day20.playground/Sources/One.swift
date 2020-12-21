import UIKit

public class One {
    class Tile {
        let ID: Int
        let raw: String
        var sides = [Int]()
        var sidesR = [Int]()
        
        init(input: String) {
            ID = Int(input.filter(\.isNumber)) ?? 0
            raw = input.split(separator: "\n").dropFirst().joined(separator: "\n")
            let rows = input
                .replacingOccurrences(of: ".", with: "0")
                .replacingOccurrences(of: "#", with: "1")
                .split(separator: "\n")
                .dropFirst()
            
            var leftStr = ""
            var rightStr = ""
            for row in rows {
                let parts = Array(row)
                leftStr += String(parts.first!)
                rightStr += String(parts.last!)
            }

            let top = Int(rows.first!, radix: 2)!
            let bottom = Int(rows.last!, radix: 2)!
            let left = Int(leftStr, radix: 2)!
            let right = Int(rightStr, radix: 2)!
            
            let topR = Int(reverse(String(rows.first!)), radix: 2)!
            let bottomR = Int(reverse(String(rows.last!)), radix: 2)!
            let leftR = Int(reverse(leftStr), radix: 2)!
            let rightR = Int(reverse(rightStr), radix: 2)!
            
            sides = [top, right, bottom, left]
            sidesR = [topR, rightR, bottomR, leftR]
        }
        
        private func reverse(_ input: String) -> String {
            return String(Array(input).reversed())
        }
    }
    
    public init(_ input: String) {
        let tiles = input.components(separatedBy: "\n\n").map {
            Tile(input: $0)
        }
        
        var matchTwo = [Int]()
        for tile in tiles {
            var sidesFound = 0
            for side in tile.sides {
                var found = false
                for other in tiles where other.ID != tile.ID {
                    if (other.sides.contains(side)) {
                        found = true
                        break
                    }
                    if (other.sidesR.contains(side)) {
                        found = true
                        break
                    }

                }
                
                if (found) {
                    sidesFound += 1
                }
            }
            
            if (sidesFound == 2) {
                matchTwo.append(tile.ID)
            }
        }
        
        var result = 1
        for match in matchTwo {
            result *= match
        }
        
        print(result)
    }
}
