import UIKit
let n = 3
let words = ["tank", "kick", "know", "wheel", "land", "dream", "mother", "robot", "tank"]

func solution(_ n: Int, _ words: [String]) -> [Int] {
    var arr = [String]()
    
    for i in 0..<words.count {
        // 처음단어 배열에 넣어주기
        if arr.isEmpty { arr.append(words[i]) }
        else {
            // 끝말이 다르거나 단어 재사용시, 인덱스 활용하여 리턴
            if arr.last?.last != words[i].first || arr.contains(words[i]){
                return [(i % n) + 1, (i/n) + 1]
            }
            // 올바른단어 사용시 배열에 삽입
            else { arr.append(words[i]) }
        }
    }
    // 끝까지 올바른 단어 사용시 [0, 0] 리턴
    return [0,0]
}
solution(n, words)
