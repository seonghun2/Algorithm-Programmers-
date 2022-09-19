import Foundation

var a = ["muzi", "frodo", "apeach", "neo"]
var b = ["muzi frodo", "apeach frodo", "frodo neo", "muzi neo", "apeach muzi"]
var count = Array<Int>(repeating: 0, count: a.count)
var result = Array<Int>(repeating: 0, count: a.count)
var k = 2
a.firstIndex(of: "frodo")
var uniqueB = Set(b)
print(uniqueB)



for i in 0...a.count-1 {
    for j in uniqueB {
        if a[i] == j.split(separator: " ")[1] {
            count[i] += 1
        }
    }
}
print(count)

for i in 0...a.count-1 {
    if count[i] >= k {
        for j in uniqueB {
            if a[i] == j.split(separator: " ")[1] {
                result[a.firstIndex(of: String(j.split(separator: " ")[0]))!] += 1
            }
        }
    }
}

print(result)


func solution(_ id_list: [String], _ report: [String], _ k: Int) -> Int {
    return 0
}
