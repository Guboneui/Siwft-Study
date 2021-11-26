import UIKit

// 딕셔너리 배열
let myFriends = [
    "a": 1,
    "b": 2,
    "c": 3
]


// 딕셔너리 배열 반복 처리가 가능합니다
// for(키, 값) in 딕셔너리 배열

for (alpha, num) in myFriends {
    print("alpha: \(alpha), num: \(num)")
}
