import UIKit
for i in 0...3 {
    print(i)
}
func solution(_ dartResult: String) -> Int {
    var firstScore: Int?
    var secondScore: Int?
    var thirdScore: Int?
    
    var dartResultArray = dartResult.map { String($0) }
    
    for i in 0...dartResultArray.count-3 {
        if dartResultArray[i] == "1" && dartResultArray[i+1] == "0" {
            dartResultArray[i+1] = "10"
            dartResultArray.remove(at: i)
        }
    }
    print(dartResultArray)
    for i in 0...dartResultArray.count-2 {
        
        if Int(dartResultArray[i]) != nil && firstScore == nil {
            firstScore = Int(dartResultArray[i])
            if dartResultArray[i+1] == "D" {
                firstScore! *= firstScore!
            }
            if dartResultArray[i+1] == "T" {
                firstScore! *= firstScore! * firstScore!
            }
            if dartResultArray[i+2] == "*" {
                firstScore! *= 2
            }
            if dartResultArray[i+2] == "#" {
                firstScore! *= -1
            }
        }
        
        if Int(dartResultArray[i]) != nil && i >= 2 && secondScore == nil {
            secondScore = Int(dartResultArray[i])
            if dartResultArray[i+1] == "D" {
                secondScore! *= secondScore!
            }
            if dartResultArray[i+1] == "T" {
                secondScore! *= secondScore! * secondScore!
            }
            if dartResultArray[i+2] == "*" {
                secondScore! *= 2
                firstScore! *= 2
            }
            if dartResultArray[i+2] == "#" {
                secondScore! *= -1
            }
        }
        
        if Int(dartResultArray[i]) != nil && i >= 4 && thirdScore == nil {
            thirdScore = Int(dartResultArray[i])
            if dartResultArray[i+1] == "D" {
                thirdScore! *= thirdScore!
            }
            if dartResultArray[i+1] == "T" {
                thirdScore! *= thirdScore! * thirdScore!
            }
            if dartResultArray[dartResultArray.count-1] == "*" {
                thirdScore! *= 2
                secondScore! *= 2
            }
            if dartResultArray[dartResultArray.count-1] == "#" {
                thirdScore! *= -1
            }
        }
    }
    return (firstScore! + secondScore! + thirdScore!)
}
var dartResult = "10S*0S*10S*"

var dartResultArray = dartResult.map { String($0) }   //String을 [String] 으로 변환

for i in 0...(dartResultArray.count-3) {
    if dartResultArray[i] == "1" && dartResultArray[i+1] == "0" {
        dartResultArray[i] = "10"
        dartResultArray[i+1] = "no"
    }
}

print(dartResultArray)
dartResultArray = dartResultArray.filter{$0 != "no"}
print(dartResultArray)
solution(dartResult)
