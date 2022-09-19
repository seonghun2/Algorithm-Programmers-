import UIKit
var arr = [1,4,2]
var arr2 = [5,4,4]

func solution(_ A:[Int], _ B:[Int]) -> Int {
    var ans = 0
    let sortedA = A.sorted()
    let sortedB = B.sorted{$0>$1}

    for i in 0..<A.count{
        ans += sortedA[i] * sortedB[i]
    }
    return ans
}
solution(arr, arr2)
