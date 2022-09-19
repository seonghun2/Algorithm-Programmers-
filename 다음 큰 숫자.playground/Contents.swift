import UIKit

let n = 78

func solution(_ n :Int) -> Int {
    var result = n + 1
    let numOfOne = String(n, radix: 2).filter{$0 == "1"}.count
    while true {
        if numOfOne == String(result, radix: 2).filter{$0 == "1"}.count {
            break
        }
        result += 1
    }
    return result
}
solution(n)
