import UIKit
 
var n = 12345

var num = n

var answer = 0

while num > 0 {
    answer += num % 10
    num /= 10
}
answer
