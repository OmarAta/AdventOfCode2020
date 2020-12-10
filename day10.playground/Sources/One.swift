import UIKit

public class One {
    public init(_ input: String) {
        var ones = 1
        var threes = 1
        let input = input.split(separator: "\n").map { Int($0)! }.sorted()
        for (i,v) in input.enumerated() {
            if (i < input.count - 1) {
                switch input[i+1] - v {
                case 1: ones += 1
                case 3: threes += 1
                default: continue
                }
            }
        }
        
        print(ones * threes)
    }
}
