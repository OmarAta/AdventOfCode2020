import UIKit

public class Two {
    public init(_ input: String) {
        var result = 0
        let groups = input.components(separatedBy: "\n\n")
        
        for group in groups {
            var all = Set(group.replacingOccurrences(of: "\n", with: ""))
            let sheets = group.split(separator: "\n").map { Set($0) }
            for sheet in sheets {
                all = all.intersection(sheet)
            }
            
            result += all.count
        }
        
        print(result)
    }
}
