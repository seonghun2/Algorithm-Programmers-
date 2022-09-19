import UIKit

func gcd(_ a: Int, _ b: Int) -> Int{
    if b == 0 {
        return a
    }
    return gcd(b, a%b)
}

gcd(8, 12)

func lgm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}
lgm(8, 12)
