import UIKit

var numbers = [2,1,3,4,1]

var result: [Int] = []

for i in 0...numbers.count-2 {
    for j in i+1...numbers.count-1 {
        if result.contains(numbers[i] + numbers[j]) == false {
            result.append(numbers[i] + numbers[j])
        }
    }
}
print(result)
