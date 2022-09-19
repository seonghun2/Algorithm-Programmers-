import UIKit
min(5, 6)
var lottos = [44, 1, 0, 0, 31, 25]
var win_nums = [31, 10, 45, 1, 6, 19]

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let zeroNum = lottos.filter { $0 == 0 }.count
    let correctNum = lottos.filter { win_nums.contains($0) }.count
    
    return [min(7-correctNum-zeroNum, 6), min(7-correctNum, 6)]
}

solution(lottos, win_nums)
