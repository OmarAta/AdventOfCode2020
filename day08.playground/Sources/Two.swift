import UIKit

public class Two {
    enum Operation: String {
        case nop = "nop"
        case acc = "acc"
        case jmp = "jmp"
    }
    struct Instruction {
        var operation: Operation
        var value: Int
        var count = 0
    }
    
    public init(_ input: String) {
        let instructions: [Instruction] = input.split(separator: "\n").map {
            let parts = $0.split(separator: " ")
            return Instruction(operation: Operation(rawValue: String(parts[0])) ?? .nop, value: Int(parts[1]) ?? 0)
        }
        
        for (i, instruction) in instructions.enumerated() where instruction.operation != .acc {
            var modified = instructions
            modified[i].operation = (instruction.operation == .nop) ? .jmp : .nop
            if (run(input: modified)) {
                break
            }
        }
    }
    
    private func run(input: [Instruction]) -> Bool {
        var instructions = input
        var pos = 0
        var accumulator = 0
        
        while (pos < instructions.count) {
            instructions[pos].count += 1
            if (instructions[pos].count > 1) { return false }
            
            switch instructions[pos].operation {
            
            case .nop:
                pos += 1
                
            case .acc:
                accumulator += instructions[pos].value
                pos += 1
                
            case .jmp:
                pos += instructions[pos].value
                
            }
        }
        
        print(accumulator)
        return true
    }
}
