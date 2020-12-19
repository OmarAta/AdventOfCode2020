import UIKit

public class One {
    var parts = [String.SubSequence]()
    public init(_ input: String) {
        let rows = input
            .replacingOccurrences(of: "(", with: " ( ")
            .replacingOccurrences(of: ")", with: " ) ")
            .split(separator: "\n")
            .map {
                $0
                .trimmingCharacters(in: .whitespacesAndNewlines)
                .split(separator: " ")
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
