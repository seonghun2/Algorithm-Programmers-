import Foundation

func solution(_ w : Int, _ h : Int) -> Int {

   
    var result = 0

    for i in 0...w-1 {
        result += i * h / w
        print(i * h / w)
    }
    return result*2
}

solution(8, 12)


