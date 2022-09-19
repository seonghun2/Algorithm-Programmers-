import UIKit
import Foundation


let movieURL = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=a21afaa5aa29158b70d40b80b5c730b0&targetDt=20220701"

let structUrl = URL(string: movieURL)!

let session = URLSession.shared

session.dataTask(with: structUrl) { data, response, error in
    if error != nil {
        print(error?.localizedDescription)
        return
    }
    
    if let safeData = data {
        
        let str = String(decoding: safeData, as: UTF8.self)
       
        print(str)
    }
    
}.resume()

