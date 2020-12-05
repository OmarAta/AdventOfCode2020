import UIKit

public class One {
    struct Seat {
        var value: String
        var row: Int
        var column: Int
        var id: Int
    }
    
    public init(_ input: String) {
        var highest = 0
        var seats = [Seat]()
        let entries = input.components(separatedBy: "\n").dropLast()
        
        for entry in entries {
            let row = Int(entry.dropLast(3).replacingOccurrences(of: "F", with: "0").replacingOccurrences(of: "B", with: "1"), radix: 2)!
            let column = Int(entry.dropFirst(7).replacingOccurrences(of: "L", with: "0").replacingOccurrences(of: "R", with: "1"), radix: 2)!
            let id = (row * 8) + column
            highest = max(highest, id)
            seats.append(Seat(value: entry, row: row, column: column, id: id))
        }
        
        print(highest)
    }
}
