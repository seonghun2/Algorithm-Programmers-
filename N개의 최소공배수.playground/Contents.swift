import UIKit

let arr = [2,6,8,14]

func solution(_ arr: [Int]) -> Int {
    // 최대공약수 구하기(최소공배수를 구하기 위해 필요함)
    func GCD(_ n1: Int, _ n2: Int) -> Int {
        // 큰수를 작은수로 나눈 나머지가 0이 될때까지 반복
        let r = n1 % n2
        if r != 0 {
            return GCD(n2, r)
        } else {
            return n2
        }
    }
    var lcm = 1
    // 앞의 두 수의 최소공배수를 구한 다음, 다음수와의 최소공배수를 구해주는것을 반복
    for i in arr {
        // 최소공배수 = 두수의 곱 / 두수의 최대공약수
        lcm = (lcm * i) / GCD(lcm, i)
    }
    return lcm
}

solution(arr)


