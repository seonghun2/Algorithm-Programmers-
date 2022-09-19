import UIKit
var lost = [2,4]
var reserve = [1,3,5]
var a = [0,2,3,4,5]
var b = 0

func solution(_ n: Int, _ lost: [Int], _ reserve: [Int]) -> Int {
    
    var gymClothNum = Array<Int>(repeating: 1, count: n)
    
    for i in lost {
        gymClothNum[i-1] -= 1
    }
    for i in reserve {
        gymClothNum[i-1] += 1
    }
    
    if gymClothNum[0] == 0 && gymClothNum[1] == 2 {
        gymClothNum[0] += 1
        gymClothNum[1] -= 1
    }
    if gymClothNum[n-1] == 0 && gymClothNum[n-2] == 2 {
        gymClothNum[n-1] += 1
        gymClothNum[n-2] -= 1
    }
    
    for i in 1...n-2 {
        if gymClothNum[i] == 0 {
            if gymClothNum[i-1] == 2 {
                gymClothNum[i-1] -= 1
                gymClothNum[i] += 1
            } else if gymClothNum [i+1] == 2 {
                gymClothNum[i+1] -= 1
                gymClothNum[i] += 1
            }
        }
    }
    
    return gymClothNum.filter { $0 != 0 }.count
    
}


solution(5, lost, reserve)
