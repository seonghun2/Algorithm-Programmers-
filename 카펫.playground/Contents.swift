import UIKit

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var result:[Int] = []
    print((brown - 4) / 2 )
    for i in 1...(brown - 4) / 2 {
        if (((brown - 4) / 2) - i) * i == yellow {
            result.append(((brown - 4) / 2) - i +  2)
            result.append(i+2)
            break
        }
    }
    return result
}
solution(24, 24)
