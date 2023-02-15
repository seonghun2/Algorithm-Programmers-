import UIKit

var s = "{{2},{2,1},{2,1,3},{2,1,3,4}}"
var f: [Int:Int] = [:]

for i in s.filter{Int(String($0)) != nil} {
    if !f.contains(Int(String(i))!) {
        f.append(Int(String(i))!)
    }
}
f

//없으면 i:0 append
//있으면 value += 1
