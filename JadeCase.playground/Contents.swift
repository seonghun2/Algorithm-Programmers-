import UIKit
import Darwin

var s = "   1fFor tge haSJDse 1week   "
func solution(_  s:String) -> String {
    var index = 0
    var result = ""
    for i in s {
        if index == 0 {
            result.append(i.uppercased())
        } else {
            result.append(i.lowercased())
            
        }
        
        if i == " " {
            index = 0
        } else if i.wholeNumberValue != nil {
            index += 1
        } else {
            index += 1
        }
    }
    return result
}
solution(s)
