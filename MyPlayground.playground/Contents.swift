import Foundation

func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var currentStage = Array<Int>(repeating: 0, count: N + 1) // 각 스테이지별 현재 도전중인 사용자 수
    var failRate:[Double] = []   // 스테이지별 실패율 저장할 배열
    var result:[Int] = []        // 결과값 저장할 배열

    for i in stages {
        currentStage[i-1] += 1
    }
    print(currentStage)
    
    for i in 0...N-1 {
        var count = 0 // 스테이지에 도달한 플레이어 수(현재 도전중인 플레이어 수 + 이미 성공한 플레이어 수)
        
        for j in i...N-1 {
            count += currentStage[j]
        }
        
        if count != 0 {
            failRate.append(Double(currentStage[i]) / Double(count + currentStage[N]))
        // 도달했으나 클리어하지 못한 플레이어의 수 / 스테이지에 도달한 플레이어 수 + 마지막 스테이지까지 클리어한 사용자
        } else {
            failRate.append(0)
        }
    }
    print(failRate)
    
    for _ in 0...N-1 {
        result.append(failRate.firstIndex(of: failRate.max()!)! + 1)
        failRate[failRate.firstIndex(of: failRate.max()!)!] = -1
    }
    return result
}

solution(5, [2, 1, 2, 6, 2, 4, 3, 3])
