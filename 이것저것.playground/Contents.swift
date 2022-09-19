import UIKit

var fiboJCalled = 0
var fiboDCalled = 0


func fiboJ(_ n :Int) -> Int {
    if n == 1 || n == 2 {
        fiboJCalled += 1
        return 1
    } else {
        return fiboJ(n-1) + fiboJ(n-2)
    }
}

func fiboD(_ n: Int) -> Int {
    var f: [Int] = []
    f.append(1)
    f.append(1)
    for i in 2...n-1 {
        f.append(f[i-1] + f[i-2])
        fiboDCalled += 1
    }
    return f[n-1]
}
var a = 30

fiboJ(a)
print(fiboJCalled)
fiboD(a)
print(fiboDCalled)
