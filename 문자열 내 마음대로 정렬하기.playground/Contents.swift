import UIKit

var strings = ["abce", "abcd", "cdx"]

var n = 1



func solution(_ strings:[String], _ n: Int) -> [String]{
    var str = strings
    
    str.sort { if $0[String.Index(encodedOffset: n)] == $1[String.Index(encodedOffset: n)] {
        return $0 < $1
    }
        return $0[String.Index(encodedOffset: n)] < $1[String.Index(encodedOffset: n)] }
    return str
}
