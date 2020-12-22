import UIKit

let input = (try? String(contentsOf: Bundle.main.url(forResource: "input", withExtension: "")!)) ?? ""

//One(input)
Two(input)

//15 per monster
//2434 - 300 = 2134 -> too low
//2434 - 150 = 2284 -> too high
//2434 - 225 = 2209 -> Correct :D
