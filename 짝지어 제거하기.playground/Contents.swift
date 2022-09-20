import UIKit

let s = "cdcdd"

func solution(_ s: String) -> Int {
    var stk = [Character]()
    
    for i in s {
        if stk.isEmpty { stk.append(i) }
        else {
            if stk.last != i { stk.append(i) }
            else { stk.removeLast() }
        }
    }
    return stk.isEmpty ? 1 : 0
}

solution(s)
