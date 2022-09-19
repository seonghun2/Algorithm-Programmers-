import UIKit

var a = [2, 1, 2, 6, 2, 4, 3, 3]
var N = 5
var currentStage:[Int] = []
for _ in 0...N {
    currentStage.append(0)
}

for i in a {
    currentStage[i-1] += 1
}
currentStage

var failRate:[Double] = []
for _ in 0...N-1 {
    failRate.append(0)
}
failRate

for i in 0...N-1 {
    var count = 0
    for j in 0+i...N-1 {
        count += currentStage[j]
    }
    print(count)
    if count != 0 {
        failRate[i] = Double(currentStage[i])  / Double(count + currentStage[N])// a배열에서 i값을 가지는 인젝스의 개수/i이상의 값을 가지는 인덱스의 개수
    } else {
        failRate[i] = 0
    }
}
failRate
failRate.index(of: failRate.max()!)

var result:[Int] = []
for i in 0...N-1{
    result.append(failRate.index(of: failRate.max()!)!+1)
    failRate[failRate.index(of: failRate.max()!)!] = -1
}
result
//func solution(_ N: Int, _ stages:[Int]) -> [Int] {
//    var failRate:[Int]?
//    for i in 0 <.. N {
//        return
//    }
//
//}
