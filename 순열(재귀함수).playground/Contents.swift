import UIKit

func permutation(_ array: [Int], _ start: Int) {
    
    var arr = array
    
    if start == arr.count-1 {
        print(arr)
        //return
    }
    for idx in start..<arr.count {
        var tmp = arr[idx]
        arr[idx] = arr[start]
        arr[start] = tmp
        
        permutation(arr, start+1)
        
        tmp = arr[idx]
        arr[idx] = arr[start]
        arr[start] = tmp
    }
}

permutation([1,2,3,4], 0)
