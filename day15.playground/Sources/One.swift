import UIKit

public class One {
    public init(_ input: String) {
        var numbers = [1,20,8,12,0,14]
        var last = numbers.popLast()!
        
        while (numbers.count < 2020) {
            if (numbers.contains(last)) {
                let diff = numbers.count - numbers.lastIndex(of: last)!
                numbers.append(last)
                last = diff
            } else {
                numbers.append(last)
                last = 0
            }
        }
        
        print(numbers.last!)
    }
}
