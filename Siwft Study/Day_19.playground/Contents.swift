import UIKit

// 배열과 비슷한 set
// 배열처럼 중복으로 값을 넣을 수 없다
// 아무리 넣어도 고유한 값들만 남음

var myNumberSet = Set<Int>()
myNumberSet.insert(1)
myNumberSet.insert(2)
myNumberSet.insert(3)
myNumberSet.insert(4)
myNumberSet.insert(1)

print(myNumberSet)
// print -> [1, 2, 3, 4] but 순서가 정해져 있지는 않음 = 정렬 x

for item in myNumberSet {
    print("item: \(item)")
}

// 그 외에도 콜렉션 [배열, 셋, 딕셔너리, 튜플] 등이 가지고 있는 기본 메소드 들을 제공한다.

var myFriends: Set<String> = ["a", "b", "c"]

if myFriends.contains("a") {
    print("a 를 포함하고 있다")
} else {
    print("a 를 포함하고 있지 않다.")
}


print(myFriends.firstIndex(of: "a")!)

// b의 인덱스를 가져와서
if let indexToRemove = myFriends.firstIndex(of: "b") {
    // b를 set에서 지운다
    myFriends.remove(at: indexToRemove)
}

if !myFriends.contains("b") {
    print("b 를 가지고 있지 않다")
}


print(myFriends)    // remove index 를 통해서 b가 사라진 것을 알 수 있음
