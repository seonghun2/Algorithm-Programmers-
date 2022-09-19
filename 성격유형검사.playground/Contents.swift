import UIKit

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var arr = ["R": 0, "T": 0, "C": 0, "F": 0, "J": 0, "M": 0, "A": 0, "N": 0]
    var result = ""


    for i in 0...survey.count-1 {
        let first = String(survey[i].first!)
        let second = String(survey[i].last!)
        
        switch choices[i] {
        case 1...3:
            arr[first]! += 4 - choices[i]
        case 4...7:
            arr[second]! += choices[i] - 4
            
        default:
            break
        }
    }

    arr["R"]! >= arr["T"]! ? result.append("R") : result.append("T")
    arr["C"]! >= arr["F"]! ? result.append("C") : result.append("F")
    arr["J"]! >= arr["M"]! ? result.append("J") : result.append("M")
    arr["A"]! >= arr["N"]! ? result.append("A") : result.append("N")
    
    return result
}

let survey = ["AN" ,"CF","MJ","RT","NA"]
let choices = [5,3,2,7,5]

solution(survey, choices)

