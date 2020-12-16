import UIKit

public class One {
    struct Field {
        let name: String
        let range: [Int]
    }
    
    public init(_ input: String) {
        let fields = input.components(separatedBy: "\n\n").first!.split(separator: "\n").map { line -> Field in
            let name = String(line.split(separator: ":").first!)
            let ranges = line.components(separatedBy: ": ").last!.components(separatedBy: " or ").map { range -> [Int] in
                let ends = range.split(separator: "-")
                return Array(Int(String(ends.first!))! ... Int(String(ends.last!))!)
            }
            
            return Field(name: name, range: ranges.first! + ranges.last!)
        }
        
        let tickets = input.components(separatedBy: "\n\n")[2].split(separator: "\n").dropFirst().map { line -> [Int] in
            line.split(separator: ",").map { Int($0) ?? -1 }
        }
                
        var error = [Int]()
        var total = 0
        
        for ticket in tickets {
            for number in ticket {
                var found = false
                for field in fields {
                    if (field.range.contains(number)) {
                        found = true
                        break
                    }
                }
                
                if (!found) {
                    error.append(number)
                    total += number
                    break
                }
            }
        }
        
        print(total)
    }
}
