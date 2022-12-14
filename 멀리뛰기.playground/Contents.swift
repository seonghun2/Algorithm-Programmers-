import UIKit

func solution(_ n:Int) -> Int {
    if n == 1 || n == 2{
        return n
    }
    
    var arr = [1,2]
    
    for i in 2...n-1 {
        arr.append((arr[i-2] + arr[i-1])%1234567)
    }
    
    return arr[n-1]
}
solution(100)
