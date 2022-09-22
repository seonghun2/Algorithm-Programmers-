import UIKit

let sizes = [[10, 7], [12, 3], [8, 15], [14, 7], [5, 15]]

func solution(_ sizes:[[Int]]) -> Int {
    var sortedSizes = [[Int]]()

    for i in sizes {
        if i[0] < i[1] {
            sortedSizes.append(i.sorted { $0 > $1})
        } else {
            sortedSizes.append(i)
        }
    }
    var maxW = 0
    var maxH = 0

    for i in sortedSizes {
        if i[0] > maxW {
            maxW = i[0]
        }
        if i[1] > maxH {
            maxH = i[1]
        }
    }
    return maxW * maxH
}
solution(sizes)
