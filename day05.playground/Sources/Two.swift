import UIKit

public class Two {
    struct Seat {
        var value: String
        var row: Int
        var column: Int
        var id: Int
    }
    
    public init(_ input: String) {
        var highest = 0
        var seats = [Seat]()
        var map = [[String]](repeating: [String](repeating: ".", count: 8), count: 128)
        let entries = input.components(separatedBy: "\n").dropLast()
        
        for entry in entries {
            let row = Int(entry.dropLast(3).replacingOccurrences(of: "F", with: "0").replacingOccurrences(of: "B", with: "1"), radix: 2)!
            let column = Int(entry.dropFirst(7).replacingOccurrences(of: "L", with: "0").replacingOccurrences(of: "R", with: "1"), radix: 2)!
            let id = (row * 8) + column
            map[row][column] = "#"
            highest = max(highest, id)
            seats.append(Seat(value: entry, row: row, column: column, id: id))
        }
        
        for (row, rowList) in map.enumerated() {
            for (column, value) in rowList.enumerated() {
                if (row > 0 && row < 127 && column > 0 && column < 7) {
                    if (value == "." &&
                        map[row + 1][column + 1] == "#" &&
                        map[row + 1][column - 1] == "#" &&
                        map[row - 1][column + 1] == "#" &&
                        map[row - 1][column - 1] == "#") {
                        print((row * 8) + column)
                    }
                }
            }
        }
        
        printOut(map)
    }
    
    private func printOut(_ map: [[String]]) {
        var x = 0
        for row in map {
            print("\(x): \(row.joined())")
            x += 1
        }
    }
}
