import UIKit

public class One {
    public init(_ rawInput: String) {
        var input = rawInput.split(separator: "\n").map { Int($0) ?? 0 }
        var front = 0
        var back = input.count - 1
        var sum = input[front] + input[back]

        input.sort()

        while sum != 2020 {
            if (sum < 2020) { front += 1 }
            if (sum > 2020) { back -= 1 }
            sum = input[front] + input[back]
        }

        print(input[front] * input[back])
    }
}
