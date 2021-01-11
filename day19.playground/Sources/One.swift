import UIKit

public class One {
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
            
            if (todo.isEmpty) {
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
        
        var possibles = Set<String>()
        for rule in rules["0"]! {
            possibles.insert(rule.joined())
        }
        
        var result = 0
        for message in messages {
            result += possibles.contains(String(message)) ? 1 : 0
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
