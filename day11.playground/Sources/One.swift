import UIKit

public class One {
    public init(_ input: String) {
        var map = input.split(separator: "\n").map { ["."] + Array($0) + ["."] }
        let emptyRow = Array(repeating: String.Element("."), count: map.first!.count)
        map = [emptyRow] + map + [emptyRow]
        
        var newMap = [[String.Element]]()
        repeat {
            newMap = map
            for (y, row) in map.enumerated() {
                for (x, spot) in row.enumerated() {
                    if (x == 0 || y == 0 || x == row.count || y == map.count) { continue }
                    
                    if (spot != ".") {
                        switch (spot, occupiedSeats(map, y: y, x: x)) {
                        case ("L", 0): newMap[y][x] = "#"
                        case ("#", 4...8): newMap[y][x] = "L"
                        default: continue
                        }
                    }
                }
            }
            if (newMap == map) {
                break
            } else {
                map = newMap
            }
        } while(true)
        
//        printMap(map)
        print(countOccupied(map))
    }
    
    private func occupiedSeats(_ map: [[Substring.Element]], y: Int, x: Int) -> Int {
        var occupied = 0
        
        if (map[y-1][x-1] == "#") { occupied += 1 }
        if (map[y-1][x]   == "#") { occupied += 1 }
        if (map[y-1][x+1] == "#") { occupied += 1 }
        
        if (map[y+1][x-1] == "#") { occupied += 1 }
        if (map[y+1][x]   == "#") { occupied += 1 }
        if (map[y+1][x+1] == "#") { occupied += 1 }
        
        if (map[y][x-1] == "#") { occupied += 1 }
        if (map[y][x+1] == "#") { occupied += 1 }

        return occupied
    }
    
    private func printMap(_ map: [[Substring.Element]]) {
        for row in map {
            print(String(row))
        }
    }
    
    private func countOccupied(_ map: [[Substring.Element]]) -> Int {
        var count = 0
        for row in map {
            count += (String(row).components(separatedBy: "#").count - 1)
        }
        
        return count
    }
}
