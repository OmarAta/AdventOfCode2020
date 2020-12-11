import UIKit

public class Two {
    struct Direction {
        let xM: Int
        let yM: Int
    }
    
    let directions = [
        Direction(xM: 0, yM: -1),
        Direction(xM: 0, yM: +1),
        Direction(xM: -1, yM: 0),
        Direction(xM: +1, yM: 0),
        Direction(xM: -1, yM: -1),
        Direction(xM: +1, yM: -1),
        Direction(xM: -1, yM: +1),
        Direction(xM: +1, yM: +1)
    ]
    
    
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
                        case ("#", 5...8): newMap[y][x] = "L"
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
        
        for direction in directions {
            if (isOccupied(map, y: y, x: x, direction: direction)) {
                occupied += 1
            }
        }

        return occupied
    }
    
    private func isOccupied(_ map: [[Substring.Element]], y: Int, x: Int, direction: Direction) -> Bool {
        var distance = 1
        var nX = x + direction.xM
        var nY = y + direction.yM
        
        while (nX >= 0 && nY >= 0 && nX < map.first!.count && nY < map.count) {
            switch (map[nY][nX]) {
            case "#": return true
            case "L": return false
            default:
                distance += 1
                nX = x + (direction.xM * distance)
                nY = y + (direction.yM * distance)
            }
        }
        
        return false
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
