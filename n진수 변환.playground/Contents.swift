import UIKit

func jinsu(num: Int, n: Int) -> String {
    var num2: Int = num
    var result: [Int] = []
    var ans: String = ""
    while true {
        result.append(num2 % n)
        num2 = num2 / n
        if num2 == 0 {
            break
        }
    }
    for i in result.reversed() {
        ans += String(i)
    }
    return ans
}

jinsu(num: 1025, n: 2)



