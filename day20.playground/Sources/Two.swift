import UIKit

public class Two {
    struct Food {
        var ingredients = Set<String>()
        var allergens = Set<String>()
    }
    
    public init(_ input: String) {
        var foods = [Food]()
        var allergens = Set<String>()
        var ingredients = Set<String>()
        var allergenIngredients = [String : Set<String>]()
        
        let rows = input.split(separator: "\n")
        for row in rows {
            var food = Food()
            let parts = row.replacingOccurrences(of: ")", with: "")
                .components(separatedBy: " (contains ")
                
            food.ingredients = Set(parts.first!
                .split(separator: " ")
                .map { $0.trimmingCharacters(in: .whitespaces) })
            ingredients.formUnion(food.ingredients)
            
            food.allergens = Set(parts.last!
                .split(separator: ",")
                .map { $0.trimmingCharacters(in: .whitespaces) })
            allergens.formUnion(food.allergens)
            
            for allergen in food.allergens {
                if (allergenIngredients.keys.contains(allergen)) {
                    allergenIngredients[allergen]!.formIntersection(food.ingredients)
                } else {
                    allergenIngredients[allergen] = food.ingredients
                }
            }
            
            foods.append(food)
        }
        
        var done = false
        while !done {
            for (a, i) in allergenIngredients where i.count == 1 {
                for (aa, ii) in allergenIngredients where ii.contains(i.first!) && a != aa {
                    allergenIngredients[aa]!.remove(i.first!)
                }
            }
            
            //check if all has one ingredient only
            done = true
            for (_, i) in allergenIngredients where i.count > 1 {
                done = false
            }
        }
        
        var result = [String]()
        for (_, i) in allergenIngredients.sorted { $0.key < $1.key }
        {
            result.append(i.first!)
        }
        
        print(result.joined(separator: ","))
    }
}
