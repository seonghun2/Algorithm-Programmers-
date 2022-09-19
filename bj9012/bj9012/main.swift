import Foundation

let n = Int(readLine()!)!

for _ in 0...n-1 {
    
    var str = readLine()!
    while str.contains("()") {
        str = str.replacingOccurrences(of: "()", with: "")
    }
    
    if str.count >= 1 {
        print("NO")
    } else {
        print("YES")
    }
    
}



