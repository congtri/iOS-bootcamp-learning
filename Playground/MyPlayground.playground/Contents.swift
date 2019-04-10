import UIKit

func fibonaci(until : Int) {
    var f : Int = 0
    var p : Int = 0
    var tmp : Int = 0
    if until <= 2 {
        for number in 0..<until {
            print(number)
        }
    }
    else {
        
        for number in 0..<2 {
            print(number)
        }
        
        f = 1
        p = 0
        
        for _ in 2..<until {
            tmp = f
            f = f + p
            p = tmp
            print(f)
        }
    }
}

fibonaci(until: 10)
