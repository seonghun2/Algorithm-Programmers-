import UIKit

var progresses = [95,90,99,99,80,99]
let speeds = [1,1,1,1,1,1]

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var lastReleaseDate = 0
    var numOfRelease: [Int] = []
    
    for i in 0..<progresses.count {
        let progress = Double(progresses[i])
        let speed = Double(speeds[i])
        
        var day = Int(ceil((100 - progress) / speed))
        
        if day > lastReleaseDate {
            numOfRelease.append(1)
            lastReleaseDate = day
        } else {
            numOfRelease[numOfRelease.count-1] += 1
        }
    }
    return numOfRelease
}
solution(progresses, speeds)
