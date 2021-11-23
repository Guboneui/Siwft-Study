import UIKit

// 0에서 2까지 -> 0, 1, 2
let myFirstRange = 0...2

// 0에서 2보다 작을 때 까지 -> 0, 1
let mySecondRange = 0..<2
let myArray = ["a", "b", "c", "d"]

// range를 통해 범위 설정이 가능하다
print(myArray[myFirstRange]) // -> print 문을 반복문 처럼 사용할 수 있다

for index in myFirstRange {
    print(myArray[index])
}

for index in mySecondRange {
    print(myArray[index])
}


