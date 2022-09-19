import UIKit

func solution(_ n:Int) -> Int {
    var paboNum = [0, 1]
    
    for i in 2...n {
        paboNum.append((paboNum[i-2]+paboNum[i-1])%1234567)
    }
    return paboNum[n]
}

solution(96)
