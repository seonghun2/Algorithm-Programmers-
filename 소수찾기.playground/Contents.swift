import Foundation

func solution(_ n:Int) -> Int {
    var cnt = 1
    
    if n == 2 {
        return 1
    }
    
    for i in 3...n {
        var isPrime = true
        for j in 2...Int(sqrt(Double(i))+1) {
            if i % j == 0 {
                isPrime = false
                break
            }
        }
        if isPrime == true {
            cnt += 1
        }
    }
    return cnt
}
solution(6)
