import UIKit

public class Two {
    public init(_ rawInput: String) {
        var input = rawInput.split(separator: "\n").map { Int($0) ?? 0 }
        var front = 0
        var center = 1
        var back = input.count - 1
        var sum = input[front] + input[center] + input[back]

        input.sort()

        while sum != 2020 {
            if (sum < 2020) {
                if ((front + 1) < center) {
                    front += 1
                } else {
                    front = 0
                    center += 1
                    back = input.count - 1
                }
            }
            if (sum > 2020) {
                if ((back - 1) > center) {
                    back -= 1
                } else {
                    front = 0
                    center -= 1
                    back = input.count - 1
                }
            }
            
            sum = input[front] + input[center] + input[back]
        }

        print(input[front] * input[center] * input[back])
    }
}
