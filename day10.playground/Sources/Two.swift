import UIKit

public class Two {
    public init(_ input: String) {
        var ones = 1
        var threes = 1
        var diff = [Int]()
        let input = [0] + input.split(separator: "\n").map { Int($0)! }.sorted()
        for (i,v) in input.enumerated() {
            if (i < input.count - 1) {
                diff.append(input[i+1] - v)
                switch diff.last {
                case 1: ones += 1
                case 3: threes += 1
                default: continue
                }
            }
        }
        
        diff += [3]
        
        var i = 0
        var pOne = true
        var n = 0
        var ways = 1
        while (i < diff.count) {
            switch (diff[i], pOne, n) {
            case (1, true, _):
                n += 1
                pOne = true
                
            case (1, false, _):
                n = 1
                pOne = true
                
            case (3, true, 1):
                ways *= 1
                pOne = false
                
            case (3, true, 2):
                ways *= 2
                pOne = false
                
            case (3, true, _):
                let multiple = Int(truncating: (pow(2, n-1) - (pow(2, n-3) - 1)) as NSDecimalNumber)
                ways *= multiple
                pOne = false
                
            default: i += 1; continue
            }
            
            i += 1
        }
        
        print(ways)
        
        /*
         (2^(n-1)) - (2^(n-3) - 1)

         4 - - 7
         4 5 - 7
         4 - 6 7
         4 5 6 7

         4 5 - - 8
         4 - 6 - 8
         4 5 6 - 8
         4 - - 7 8
         4 5 - 7 8
         4 - 6 7 8
         4 5 6 7 8

         4 - 6 - - 9
         4 5 6 - - 9
         4 - - 7 - 9
         4 5 - 7 - 9
         4 - 6 7 - 9
         4 5 6 7 - 9
         4 5 - - 8 9
         4 - 6 - 8 9
         4 5 6 - 8 9
         4 - - 7 8 9
         4 5 - 7 8 9
         4 - 6 7 8 9
         4 5 6 7 8 9

         1 x 1's -> 1
         2 x 1's -> 2
         3 x 1's -> 4
         4 x 1's -> 7
         5 x 1's -> 13
         */
    }
}
