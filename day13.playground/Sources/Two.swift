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
        
        var incInput = [1]
        let maxOffset = buses.max { $0.offset < $1.offset }!.offset

        var t = 0
        for bus in buses {
            let inc = lcm(incInput)
            while (true) {
                t += inc
                if (((t - maxOffset + bus.offset) % bus.id) == 0) {
                    break
                }
            }
            incInput.append(bus.id)
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
