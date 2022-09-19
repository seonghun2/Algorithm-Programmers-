import UIKit
var i = 2
"fadf\(i)sf"
var answers = [1, 2, 3, 4, 5]

answers.remove(at: answers.index(of: answers.min()!)!)

answers.remove(at: 3)
answers
answers.firstIndex(of: 2)
func solution(_ answers:[Int]) -> [Int] {
    var count = [1:0, 2:0, 3:0]
    
    let supo1 = [1, 2, 3, 4, 5]                    // 0-4
    let supo2 = [2, 1, 2, 3, 2, 4, 2, 5]           // 0-7
    let supo3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]     // 0-9

    for i in 0...answers.count-1 {
        if answers[i] == supo1[i % 5] {
            count[1]! += 1
        }
        if answers[i] == supo2[i % 8] {
            count[2]! += 1
        }
        if answers[i] == supo3[i % 10] {
            count[3]! += 1
        }
    }

    return count.filter { $0.value == count.values.max() }.map { $0.key }.sorted()
}
solution(answers)
