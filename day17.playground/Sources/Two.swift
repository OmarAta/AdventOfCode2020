import UIKit

public class Two {
    struct Position: Hashable {
        let x: Int
        let y: Int
        let z: Int
        let w: Int
    }
    struct Cube {
        var active: Bool
        var didChange = false
    }

    var map = [Position : Cube]()

    public init(_ input: String) {
        for x in -15 ... 15 {
            for y in -15 ... 15 {
                for z in -10 ... 10 {
                    for w in -10 ... 10 {
                        map[Position(x: x, y: y, z: z, w: w)] = Cube(active: false)
                    }
                }
            }
        }
        
        let rows = input.split(separator: "\n")
        for (y, row) in rows.enumerated() {
            let cubes = Array(row)
            for (x, cube) in cubes.enumerated() {
                map[Position(x: x, y: y, z: 0, w: 0)] = Cube(active: (cube == "#"))
            }
        }
                
        for _ in 1 ... 6 {
            for (position, cube) in map {
                let activeNeighbors = countActiveNeighbors(position)

                switch (cube.active, activeNeighbors) {
                case (true, 2...3): continue
                case (true, _): map[position]!.didChange = true
                case (false, 3): map[position]!.didChange = true
                default: continue
                }
            }
            
            //update the map with the changes
            for (position, cube) in map where cube.didChange {
                map[position]!.active = !cube.active
                map[position]!.didChange = false
            }
        }
        
        var activeCount = 0
        for (_, cube) in map where cube.active {
            activeCount += 1
        }
        
        print(activeCount)
    }
    
    private func countActiveNeighbors(_ position: Position) -> Int {
        var actives = 0
        
        for x in -1 ... 1 {
            for y in -1 ... 1 {
                for z in -1 ... 1 {
                    for w in -1 ... 1 {
                        if !(x == 0 && y == 0 && z == 0 && w == 0) {
                            if let cube = map[Position(x: position.x + x, y: position.y + y, z: position.z + z, w: position.w + w)] {
                                actives += cube.active ? 1 : 0
                            }
                        }
                    }
                }
            }
        }
        
        return actives
    }
}
