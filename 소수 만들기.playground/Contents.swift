import UIKit

var answer = 0
func isPrime(_ n: Int) -> Bool {
    if n <= 3 {
        return n == 1 ? false : true
    }
    for i in 2...n/2 {
        if n % i == 0 {
            return false
        }
    }
    return true
}

var nums = [1, 2, 3, 4]
for i in 0...nums.count-3 {
    for j in i+1...nums.count-2 {
        for k in j+1...nums.count-1 {
            if isPrime(nums[i] + nums[j] + nums[k]) == true {
                answer += 1
            }
        }
    }
}
print(answer)

