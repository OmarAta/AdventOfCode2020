import UIKit

public class One {
    enum Operation: String {
        case north   = "N"
        case south   = "S"
        case east    = "E"
        case west    = "W"
        case left    = "L"
        case right   = "R"
        case forward = "F"
    }
    
    struct Move {
        let op: Operation
        let value: Int
    }
    
    struct Position {
        var x: Int
        var y: Int
    }


        
    public init(_ input: String) {
        let moves = input.split(separator: "\n").map { Move(op: Operation(rawValue: $0.filter(\.isLetter))!, value: Int($0.filter(\.isNumber))!) }

        var pos = Position(x: 0, y: 0)
        var dir = 0.0

        for move in moves {
//            print("dir: \(dir), move: \(move)")
            switch move.op {
            case .north: pos.y += move.value
            case .south: pos.y -= move.value
            case .east : pos.x += move.value
            case .west : pos.x -= move.value
            case .right: dir += Double(move.value)
            case .left : dir -= Double(move.value)
            case .forward:
                let angle = (dir / -360) * 2 * .pi
                pos.x += (Int(cos(angle)) * move.value)
                pos.y += (Int(sin(angle)) * move.value)
            }
//            print(pos)
        }
        
        print(pos)
        print(abs(pos.x) + abs(pos.y))
    }
}
