import UIKit

var array = [1, 5, 2, 6, 3, 7, 4]
array.sort()
array
var commands = [[2,5,3], [4,4,1], [1,7,3]]

//for i in commands {
//    print(array[i[0]-1...i[1]-1].sorted()[i[2]-1])
//}
//
//array[0...3][3]

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    for i in commands {
        result.append(array[i[0]-1...i[1]-1].sorted()[i[2]-1])
    }
    
    return result
}

solution(array, commands)
