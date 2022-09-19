import UIKit

func solution(_ n: Int, _ lost: [Int], _ reserve: [Int]) -> Int {
    var gymclothNum = Array<Int> (repeating: 1 ,count: n)

    for i in lost {
        gymclothNum[i-1] -= 1
    }

    for i in reserve {
        gymclothNum[i-1] += 1
    }

    if gymclothNum[0] == 0 && gymclothNum[1] == 2 {
        gymclothNum[0] += 1
        gymclothNum[1] -= 1
    }
    
    if gymclothNum[gymclothNum.count-1] == 0 && gymclothNum[gymclothNum.count-2] == 2 {
        gymclothNum[gymclothNum.count-1] += 1
        gymclothNum[gymclothNum.count-2] -= 1
    }
    
    
    for i in 1...gymclothNum.count-2 {
        if gymclothNum[i] == 0 && gymclothNum[i-1] == 2 {
            gymclothNum[i] += 1
            gymclothNum[i-1] -= 1
        }
        if gymclothNum[i] == 0 && gymclothNum[i+1] == 2 {
            gymclothNum[i] += 1
            gymclothNum[i+1] -= 1
        }
        
    }
    
    return gymclothNum.filter{$0 != 0}.count
}

solution(5, [2,4], [1,3,5])
