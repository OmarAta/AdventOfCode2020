import UIKit

public class Two {
    public init(_ input: String) {
        
        var numbers = [Int : Int]()
        
        let start = [1,20,8,12,0,14]
        let target = 30000000
        
        var last = 0
        var index = 0
        for (i,v) in start.enumerated() {
            numbers[v] = i
            last = v
            index = i
        }
        
        while (index < (target - 1)) {
            if (numbers.keys.contains(last)) {
                let offset = index - numbers[last]!
                numbers[last] = index
                last = offset
            } else {
                numbers[last] = index
                last = 0
            }
            
            index += 1
        }
        
        print(last)
    }
}
