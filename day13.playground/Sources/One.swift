import UIKit

public class One {
    public init(_ input: String) {
        let arrival = Int(input.split(separator: "\n")[0])!
        let buses = input.split(separator: "\n")[1].replacingOccurrences(of: "x", with: "").split(separator: ",").map { Int($0)! }

        var lowest = Int.max
        var busId = 0

        for bus in buses {
            let next = ((arrival/bus) + 1) * bus
            if ((next - arrival) < lowest) {
                lowest = (next - arrival)
                busId = bus
            }
        }

        print(lowest * busId)
    }
}
