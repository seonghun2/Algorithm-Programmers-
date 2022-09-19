import Foundation
import Darwin

var board = [[0,0,0,0,0], [0,0,1,0,3], [0,2,5,0,1], [4,2,4,4,2], [3,5,1,3,1]]
var moves = [1, 5, 3, 5, 1, 2, 1, 4]
//var basket: [Int] = []
//var result = 0
//
//for move in moves {
//    for i in 0...board.count-1 {
//        if board[i][move-1] != 0 {
//            basket.append(board[i][move-1])
//            if basket.count >= 2 && basket[basket.count-2] == basket[basket.count-1] {
//                result += 2
//                basket.removeLast(2)
//            }
//            board[i][move-1] = 0
//            break
//        }
//    }
//}
//print(result)
//print(board)
//print(basket)

func solution(_ board: [[Int]], _ moves:[Int]) -> Int {
    var board = board
    var basket: [Int] = []
    var result = 0
    
    for move in moves {
        for i in 0...board.count-1 {
            if board[i][move-1] != 0 {
                basket.append(board[i][move-1])
            
            if basket.count >= 2 && basket[basket.count-2] == basket[basket.count-1] {
                    result += 2
                    basket.removeLast(2)
            }
            
            board[i][move-1] = 0
            break
            }
        }
    }
    return result
}
solution(board, moves)
