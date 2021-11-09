import UIKit

//property observer

var myAge = 0 {
    willSet {
        print("값이 설정될 예정이다: \(myAge)")
    }
    didSet {
        print("값이 변경 되었다: \(myAge)")
    }
}


myAge = 10
