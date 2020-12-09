import UIKit

public class Two {
    public init(_ input: String) {
        let target = 85848519
        var input = input.split(separator: "\n").map { Int($0)! }
        input = Array(input[0...input.firstIndex(of: target)!])
        
        for (i, _) in input.enumerated() {
            var total = 0
            var index = i
            var numbers = [Int]()
            while (total < target) {
                total += input[index]
                numbers.append(input[index])
                index += 1
            }
            
            if (total == target) {
                print((numbers.min() ?? 0) + (numbers.max() ?? 0))
                break
            }
        }
    }
}
