import UIKit

public class Two {
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

        var waypoint = Position(x: 10, y: 1)
        var pos = Position(x: 0, y: 0)

        /*
         R0   R90  R180 R270    L0   L90  L180 L270
         +x   +y   -x   -y      +x   -y   -x   +y
         +y   -x   -y   +x      +y   +x   -y   -x
        */

        for move in moves {
            switch (move.op, move.value) {
            case (.north, _): waypoint.y += move.value
            case (.south, _): waypoint.y -= move.value
            case (.east , _): waypoint.x += move.value
            case (.west , _): waypoint.x -= move.value
            case (.right, 90):  waypoint = Position(x: +waypoint.y, y: -waypoint.x)
            case (.right, 180): waypoint = Position(x: -waypoint.x, y: -waypoint.y)
            case (.right, 270): waypoint = Position(x: -waypoint.y, y: +waypoint.x)
            case (.right, _): continue
            case (.left, 90):  waypoint = Position(x: -waypoint.y, y: +waypoint.x)
            case (.left, 180): waypoint = Position(x: -waypoint.x, y: -waypoint.y)
            case (.left, 270): waypoint = Position(x: +waypoint.y, y: -waypoint.x)
            case (.left, _): continue
            case (.forward, _):
                pos.x += (waypoint.x * move.value)
                pos.y += (waypoint.y * move.value)
            }
        }
        
        print(pos)
        print(abs(pos.x) + abs(pos.y))
    }
}
