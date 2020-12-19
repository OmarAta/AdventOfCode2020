import UIKit

public class Two {
    var parts = [String.SubSequence]()
    public init(_ input: String) {
        var rows = input
            .replacingOccurrences(of: "(", with: " ( ")
            .replacingOccurrences(of: ")", with: " ) ")
            .split(separator: "\n")
            .map {
                $0
                .trimmingCharacters(in: .whitespacesAndNewlines)
                .split(separator: " ")
            }
        
        //find the +'s and surround them in "(" ")"
        for row in rows.indices {
            for i in rows[row].indices.reversed() {
                if (rows[row][i] == "+") {
                    var depth = 0
                    
                    //add the closing ")"
                    var index = i
                    repeat {
                        index += 1
                        switch rows[row][index] {
                        case "(": depth += 1
                        case ")": depth -= 1
                        default: continue
                        }
                    } while (depth != 0)
                    rows[row].insert(")", at: index + 1)

                    
                    //add the opening "("
                    depth = 0
                    index = i
                    repeat {
                        index -= 1
                        switch rows[row][index] {
                        case "(": depth -= 1
                        case ")": depth += 1
                        default: continue
                        }
                    } while (depth != 0)
                    rows[row].insert("(", at: index)

                }
            }
        }
        
        var result = 0
        for row in rows {
            parts = row
            result += calculate()
        }
        print(result)
    }
    
    private func calculate() -> Int {
        var result = -1
        var lastOp = ""
        var lastNum = -1
        while (parts.count > 0) {
            let part = parts.removeFirst()
            switch part {
            
            case "(":
                lastNum = calculate()
                if (result == -1) { result = lastNum }
                if (lastOp == "+") { result += lastNum }
                if (lastOp == "*") { result *= lastNum }
                
            case ")":
                return result
                
            case "+", "*":
                lastOp = String(part)
                
            default:
                if (result == -1) {
                    result = Int(part)!
                }
                else {
                    if (lastOp == "+") { result += Int(part)! }
                    if (lastOp == "*") { result *= Int(part)! }
                }
            }
        }
        
        return result
    }
}
