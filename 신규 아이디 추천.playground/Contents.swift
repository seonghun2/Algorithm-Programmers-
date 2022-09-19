import UIKit

func solution(_ new_id:String) -> String {
    var result = ""
    
    result = id.lowercased()
    print(result)
    
    result = id.filter{ 48...57 ~= Int($0.asciiValue!) || 97...122 ~= Int($0.asciiValue!) || 45...46 ~= Int($0.asciiValue!) || Int($0.asciiValue!) == 95}
    print(result)
    
    while result.contains("..") {
        result = result.replacingOccurrences(of: "..", with: ".")
    }
    print(result)
    if result.first == "." {
        result.removeFirst()
    }
    if result.last == "." {
        result.removeLast()
    }
    print(result)
    if result == "" {
        result = "a"
    }
    print(result)
    
    if result.count >= 16 {
        result.removeLast(result.count - 15)
    }
    if result.last == "." {
        result.removeLast()
    }
    print(result)
    
    while result.count < 3 {
        result += String(result.last!)
    }
    print(result)
    return result
}

solution("...!@BaT#*..y.abcdefghijklm")


delay
