import UIKit

let n = 5000

func solution(_ n: Int) -> Int {
    var copyN = n
    var result = 1

    while copyN != 1 {
        if copyN % 2 == 1{
            result += 1
        }
        copyN /= 2
    }
    return result
}

solution(5000)
