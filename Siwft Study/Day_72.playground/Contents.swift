import UIKit

// 튜플도 스위치문에서 사용 가능
// x축 y축 위치를 나타내는 somePoint 튜플

let somePoint = (x:0, y:1)

switch somePoint {
    case (x: 0, y: 0):
        print("\(somePoint)는 중십에 있다")
    case (_, y: 0):
        print("\(somePoint)는 x축 위에 있다")
    case (x: 0, _):
        print("\(somePoint)는 y축 위에 있다")
    case (-2...2, -2...2):
        print("\(somePoint)는 상자 안에 있다")
    default:
        print("\(somePoint)는 상자 밖에 있다")
}

