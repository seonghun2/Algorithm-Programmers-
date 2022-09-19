import UIKit

let arr = [2,1,1,1,2,2,3,3,3,4,3,1,2]

var ans: [Int] = []

ans.append(arr[0])

for i in arr {
    if i != ans.last {
        ans.append(i)
    }
}
print(ans)
