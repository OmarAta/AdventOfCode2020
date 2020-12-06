import UIKit

public class One {
    public init(_ input: String) {
        var result = 0
        let groups = input.components(separatedBy: "\n\n")
        
        for group in groups {
            result += Set(group.replacingOccurrences(of: "\n", with: "")).count
        }
        
        print(result)
    }
}
