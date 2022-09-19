import UIKit

let numbers = [1,3,4,5,8,2,1,4,5,9,5]
let hands = "right"
(-3).magnitude
print(numbers.map { $0 == 1 ? 11 : $0 })
print(numbers)
print(numbers.filter { $0 == 1 }.map { $0 + 11 })
var result = ""
var currentL = 10
var currentR = 11
for i in numbers {
    if i == 1 || i == 4 || i == 7 {
        result.append("L")
        currentL = i
    }
    else if i == 3 || i == 6 || i == 9 {
        result.append("R")
        currentR = i
    } else {
        if ((currentL - i).magnitude / 3) + ((currentL - i).magnitude % 3) > ((currentR - i).magnitude / 3) + ((currentR - i).magnitude % 3) {
            currentR = i
            result.append("R")
        } else if ((currentL - i).magnitude / 3) + ((currentL - i).magnitude % 3) < ((currentR - i).magnitude / 3) + ((currentR - i).magnitude % 3) {
            currentL = i
            result.append("L")
        } else {
            if hands == "right" {
                currentR = i
                result.append("R")
            } else {
                currentL = i
                result.append("L")
            }
        }
        
    }
}
print(result)

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result = ""
    var currentL = 10
    var currentR = 12
    numbers.map { $0 == 0 ? 11 : $0 }
    for i in numbers {
        if i == 1 || i == 4 || i == 7 {
            result.append("L")
            currentL = i
        }
        else if i == 3 || i == 6 || i == 9 {
            result.append("R")
            currentR = i
        } else {
            if ((currentL - i).magnitude / 3) + ((currentL - i).magnitude % 3) > ((currentR - i).magnitude / 3) + ((currentR - i).magnitude % 3) {
                currentR = i
                result.append("R")
            } else if ((currentL - i).magnitude / 3) + ((currentL - i).magnitude % 3) < ((currentR - i).magnitude / 3) + ((currentR - i).magnitude % 3) {
                currentL = i
                result.append("L")
            } else {
                if hand == "right" {
                    currentR = i
                    result.append("R")
                } else {
                    currentL = i
                    result.append("L")
                }
            }
        }
    }
    return result
}
solution(numbers, hands)
