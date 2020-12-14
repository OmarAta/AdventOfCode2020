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
        
        let biggest = buses.max { $0.id < $1.id }!
        var t = ((100000000000000 / biggest.id) * biggest.id) + biggest.offset
        var found = false

        while (!found) {
            t += biggest.id
            
            found = true
            for bus in buses {
                if (((t + bus.offset) % bus.id) != 0) {
                    found = false
                    break
                }
            }
        }
        
        print(t)
    }
}
