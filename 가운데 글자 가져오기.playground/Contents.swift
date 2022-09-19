import UIKit
var s = "abcde"
Array(s)
s[String.Index(encodedOffset: 1)]

func solution(_ s: String) -> String {
    let length = s.count
    return String(s[String.Index(encodedOffset: (length-1)/2)...String.Index(encodedOffset: length/2)])
}

solution("abcefg")
