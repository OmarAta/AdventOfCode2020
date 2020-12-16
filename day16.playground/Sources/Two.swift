import UIKit

public class Two {
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
        
        let myTicket = input.components(separatedBy: "\n\n")[1].split(separator: "\n")[1].split(separator: ",").map { Int($0) ?? -1 }
        var tickets = input.components(separatedBy: "\n\n")[2].split(separator: "\n").dropFirst().map { line -> [Int] in
            line.split(separator: ",").map { Int($0) ?? -1 }
        }
                  
        // filter good tickets only
        var good = [[Int]]()
        for ticket in tickets {
            var bad = false
            for number in ticket {
                var found = false
                for field in fields {
                    if (field.range.contains(number)) {
                        found = true
                        break
                    }
                }
                
                if (!found) {
                    bad = true
                    break
                }
            }
            
            if (!bad) {
                good.append(ticket)
            }
        }
        tickets = good
        
        // find possible fields for each number
        var possibleFields = [Set<String>]()
        for i in 0 ..< tickets.first!.count {
            var possible = Set<String>()
            for field in fields {
                var valid = true
                for ticket in tickets {
                    if (!field.range.contains(ticket[i])) {
                        valid = false
                        break
                    }
                }
                if (valid) {
                    possible.insert(field.name)
                }
            }
            possibleFields.append(possible)
        }
                
        var fieldNames = [Int : String]()
        while (fieldNames.count < myTicket.count) {
            for (i, possible) in possibleFields.enumerated() {
                if (possible.count == 1) {
                    fieldNames[i] = possible.first!
                    var newPossibleFields = [Set<String>]()
                    for var p in possibleFields {
                        p.remove(possible.first!)
                        newPossibleFields.append(p)
                    }
                    possibleFields = newPossibleFields
                    break
                }
            }
        }
                
        var total = 1
        for (k,v) in fieldNames {
            if (v.starts(with: "departure")) {
                total *= myTicket[k]
            }
        }
        
        print(total)
    }
}
