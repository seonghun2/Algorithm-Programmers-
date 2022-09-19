import UIKit

var ss = s.map{String($0)}
print(ss)


func solution(_ s: String) -> Int {
    
    let sArray = s.map{String($0)}
    var result = ""
    var tmp = ""
    
    for i in 0..<sArray.count {
        if Int(sArray[i]) != nil {
            result += sArray[i]
        } else {
            tmp += sArray[i]
        }
        switch tmp {
        case "zero":
            result += "0"
            tmp = ""
        case "one":
            result += "1"
            tmp = ""
        case "two":
            result += "2"
            tmp = ""
        case "three":
            result += "3"
            tmp = ""
        case "four":
            result += "4"
            tmp = ""
        case "five":
            result += "5"
            tmp = ""
        case "six":
            result += "6"
            tmp = ""
        case "seven":
            result += "7"
            tmp = ""
        case "eight":
            result += "8"
            tmp = ""
        case "nine":
            result += "9"
            tmp = ""
        default:
            break
        }
    }
    
    return Int(result)!
}
let s = "1zero52zerozero5"
s.replacingOccurrences(of: "zero", with: "0")

solution(s)
