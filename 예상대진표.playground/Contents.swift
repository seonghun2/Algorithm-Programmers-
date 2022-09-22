import UIKit

let n = 8
let a = 4
let b = 7
func  solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var p1 = a
    var p2 = b
    var answer = 0
    while p1 != p2 {
        p1 = (p1+1) / 2
        p2 = (p2+1) / 2
        answer += 1
    }
    return answer
}
solution(8, 4, 7)
