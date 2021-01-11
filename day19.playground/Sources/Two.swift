import UIKit

public class Two {
    var rules = [String : Set<[String]>]()
    
    public init(_ input: String) {
        let messages = input
            .components(separatedBy: "\n\n")
            .last!
            .split(separator: "\n")

        input
            .components(separatedBy: "\n\n")
            .first!
            .replacingOccurrences(of: "\"", with: "")
            .split(separator: "\n")
            .map {
                let parts = $0.components(separatedBy: ": ")
                rules[String(parts.first!)] = Set(parts.last!.components(separatedBy: " | ").map { $0.components(separatedBy: " ") })
            }
                
        var newTodo = Set(["54", "122"])
        var todo = Set<String>()
                
        while rules.count > 1 {
            todo = newTodo
            newTodo.removeAll()

            if (todo.contains("42") && todo.contains("31")) {
                break
            }

            for number in todo {
                for (i, _) in rules where !todo.contains(i) {
                    repeat {
                        var newRules = rules[i]!
                        for option in newRules {
                            if (option.contains(number)) {
                                newRules.remove(option)
                                newRules.formUnion(combine(option: option, number: number))
                            }
                        }

                        if (newRules != rules[i]) {
                            rules[i] = newRules
                        } else {
                            break
                        }
                    } while (true)

                    if (i != "0") {
                        var noNumbers = true
                        for option in rules[i]! {
                            for element in option {
                                if (!element.filter(\.isNumber).isEmpty) {
                                    noNumbers = false
                                    break
                                }
                            }
                            if (!noNumbers) {
                                break
                            }
                        }

                        if (noNumbers) {
                            newTodo.insert(i)
                        }
                    }
                }

                rules.removeValue(forKey: number)
            }
        }
        
        let rules42 = Set(rules["42"]!.map { $0.joined() })
        let rules31 = Set(rules["31"]!.map { $0.joined() })
        
        var result = 0
        for var message in messages {
            
            var doneWith42 = false
            var found42s = 0
            var found31s = 0
            
            while (!message.isEmpty) {
                let part = String(message.prefix(8))
                message.removeFirst(8)

                switch (doneWith42, rules42.contains(part), rules31.contains(part)) {
                case (false, true , _    ): found42s += 1
                case (false, false, true ): doneWith42 = true; found31s += 1
                case (false, false, false): message.removeAll()
                case (true , _    , true ): found31s += 1
                case (true , _    , false): found31s = 0; message.removeAll()
                }
            }
            
            if (found31s > 0 && found42s > found31s) {
                result += 1
            }
        }
        
        print(result)
    }
    
    private func combine(option: [String], number: String) -> [[String]] {
        var result = [[String]]()
        for rule in rules[number]! {
            if let index = option.firstIndex(of: number) {
                var newOption = option
                newOption.remove(at: index)
                newOption.insert(contentsOf: rule, at: index)
                result.append(newOption)
            }
        }
        
        return result
    }
}
