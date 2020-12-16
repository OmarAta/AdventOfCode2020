import UIKit

public class Two {
    struct Bus {
        let id: Int
        let offset: Int
    }
    public init(_ input: String) {
        var buses = [Bus]()
        let busesRaw = input.split(separator: "\n")[1].split(separator: ",").map { Int($0) ?? -1 }
        for (i, id) in busesRaw.enumerated() {
            if (id != -1) {
                buses.append(Bus(id: id, offset: i))
            }
        }
        
        var t = 100710732647677
        let inc = lcm([17, 19, 13, 23, 29, 37, 41, 383])
        let maxOffset = 67
        let bId = 457
        let bOffset = 50
        while (true) {
            t += inc
            if (((t - maxOffset + bOffset) % bId) == 0) {
                print(t)
                break
            }
        }
        
        print(t - maxOffset)
    }
    
    func gcd(_ a: Int, _ b: Int) -> Int {
        var (a, b) = (a, b)
        while b != 0 {
            (a, b) = (b, a % b)
        }
        return abs(a)
    }

    func lcm(a: Int, b: Int) -> Int {
        return (a / gcd(a, b)) * b
    }

    func lcm(_ vector : [Int]) -> Int {
        return vector.reduce(1, lcm)
    }
}
