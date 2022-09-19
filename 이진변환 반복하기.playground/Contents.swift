import UIKit

let s = "1111111"
var a:(s:Int,sg:String) = (0,"")
func solution(_ s:String) -> [Int] {
    var ss = s

    var count = 0
    var zeroCount = 0

    while ss != "1" {
        zeroCount +=  ss.replacingOccurrences(of: "1", with: "").count
        ss = String(ss.replacingOccurrences(of: "0", with: "").count, radix: 2)
        count += 1
    }
    return [count, zeroCount]
}
solution(s)
