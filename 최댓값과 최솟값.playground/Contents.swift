import UIKit

var s = "-1 -2 -3 -4"

var nums = s.split(separator: " ").map { Int($0)! }

s.components(separatedBy: " ")
nums.max()
var ss = "\(nums.min()!) \(nums.max()!)"
