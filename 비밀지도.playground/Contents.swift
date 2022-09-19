import UIKit

let n = 6
let arr1 = [46,33,33,22,31,50]
let arr2 = [27,56,19,14,14,10]
var arr3:[String] = []
var answer:[String] = []
print(answer)
//for i in arr1 {
//    print(Int(String(i, radix: 2))!)
//}

for i in 0...arr1.count-1 {
    arr3.append(String(arr1[i] | arr2[i],radix: 2))
}
print(arr3)

for i in arr3 {
    var oneLine = ""
    if i.count != n {
        for _ in 0..<n - i.count {
            oneLine += " "
        }
    }
    for j in i {
        oneLine += j == "1" ? "#" : " "
    }
    answer.append(oneLine)
}
print(answer)

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var arr3:[String] = []
    var answer:[String] = []
    
    for i in 0...arr1.count-1 {
        arr3.append(String(arr1[i] | arr2[i],radix: 2))
    }
    
    for i in arr3 {
        var oneLine = ""
        if i.count != n {
            for _ in 0..<n - i.count {
                oneLine += " "
            }
        }
        for j in i {
            oneLine += j == "1" ? "#" : " "
        }
        answer.append(oneLine)
    }
    
    return answer
}
