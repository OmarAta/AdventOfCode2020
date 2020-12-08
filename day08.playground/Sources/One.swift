import UIKit

public class One {
    enum Operation: String {
        case nop = "nop"
        case acc = "acc"
        case jmp = "jmp"
    }
    struct Instruction {
        let operation: Operation
        let value: Int
        var count = 0
    }
    
    var instructions = [Instruction]()

    public init(_ input: String) {
        instructions = input.split(separator: "\n").map {
            let parts = $0.split(separator: " ")
            return Instruction(operation: Operation(rawValue: String(parts[0])) ?? Operation.nop, value: Int(parts[1]) ?? 0)
        }
        
        run()
    }
    
    private func run() {
        var pos = 0
        var accumulator = 0
        
        while pos < instructions.count {
            instructions[pos].count += 1
            if (instructions[pos].count > 1) {
                print(accumulator)
                break
            }
            
            switch instructions[pos].operation {
            
            case Operation.nop:
                pos += 1
                
            case Operation.acc:
                accumulator += instructions[pos].value
                pos += 1
                
            case Operation.jmp:
                pos += instructions[pos].value
                
            }
        }
    }
}
