import UIKit

public class One {
    public init(_ input: String) {
        let preamble = 25
        let input = input.split(separator: "\n").map { Int($0)! }
        
        for i in Array(preamble..<input.count) {
            let preambleList = Array(input[(i-preamble)...(i-1)])
            if (!find(input: preambleList, target: input[i])) {
                print(input[i])
                break
            }
        }
    }
    
    private func find(input: [Int], target: Int) -> Bool {
        let numbers = input.sorted()
        var front = 0
        var back = numbers.count - 1
        var sum = 0

        while (front != back) {
            sum = numbers[front] + numbers[back]
            if (sum < target) { front += 1 }
            if (sum > target) { back -= 1 }
            if (sum == target) {
                return true
            }
        }
        
        return false
    }
}
