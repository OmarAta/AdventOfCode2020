import UIKit

public class One {
    struct Password {
        let min: Int
        let max: Int
        let portion: String
        let password: String
    }
    
    public init(_ input: String) {
        var passwords = [Password]()
        var valid = 0

        for row in input.split(separator: "\n") {
            let parts = row.split(separator: " ")
            let portion = parts[1].replacingOccurrences(of: ":", with: "")
            let password = String(parts[2])
            let min = Int(parts[0].split(separator: "-")[0]) ?? 0
            let max = Int(parts[0].split(separator: "-")[1]) ?? 0
            passwords.append(Password(min: min, max: max, portion: portion, password: password))
        }

        for password in passwords {
            let count = password.password.components(separatedBy: password.portion).count - 1
            if (count >= password.min && count <= password.max) {
                valid += 1
            }
        }

        print(valid)
    }
}
