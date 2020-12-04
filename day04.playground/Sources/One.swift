import UIKit

public class One {
    struct Height {
        var value: Int
        var unit: String
    }
    
    struct Passport {
        var valid = false
        var byr: Int?
        var iyr: Int?
        var eyr: Int?
        var hgt: Height?
        var hcl: String?
        var ecl: String?
        var pid: String?
        var cid: String?
    }
    
    public init(_ input: String) {
        var valid = 0
        var passports = [Passport]()
        let rows = input.components(separatedBy: "\n\n")
        for row in rows {
            let newPassport = parse(raw: row.replacingOccurrences(of: "\n", with: " "))
            passports.append(newPassport)
            valid += (newPassport.valid) ? 1 : 0
        }
        
        print(valid)
    }
    
    private func height(from: String?) -> Height? {
        if let raw = from {
            let value = Int(raw.components(separatedBy:CharacterSet.decimalDigits.inverted).joined()) ?? 0
            let unit = raw.components(separatedBy:CharacterSet.decimalDigits).joined()
            return Height(value: value, unit: unit)
        } else {
            return nil
        }
    }

    private func parse(raw: String) -> Passport {
        var passport = Passport()
        let fields = raw.split(separator: " ")
        for field in fields {
            let split = field.split(separator: ":")
            switch split[0] {
            case "byr": passport.byr = Int(split[1])
            case "iyr": passport.iyr = Int(split[1])
            case "eyr": passport.eyr = Int(split[1])
            case "hgt": passport.hgt = height(from: String(split[1]))
            case "hcl": passport.hcl = String(split[1])
            case "ecl": passport.ecl = String(split[1])
            case "pid": passport.pid = String(split[1])
            case "cid": passport.cid = String(split[1])
            default: break
            }
        }
        
        if let _ = passport.byr,
           let _ = passport.iyr,
           let _ = passport.eyr,
           let _ = passport.hgt,
           let _ = passport.hcl,
           let _ = passport.ecl,
           let _ = passport.pid {
            passport.valid = true
        }
        
        return passport
    }
}
