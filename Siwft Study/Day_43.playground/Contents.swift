import UIKit

struct Friend {
    var name: String
    var age: Int
}

let myFriends = [
    Friend(name: "AA", age: 20),
    Friend(name: "BB", age: 25),
    Friend(name: "CC", age: 30)
]

// reduce를 통해 콜렉션으로 하나 값 계산이 가능합니다.
// $0: 결과 / $1: 각 아이템
// ex: 결과 + 친구의 나이 더하기를 콜렉션 갯수만큼 진행
// 10이 처음으로 result에 대한 초기값

let totalAge_00 = myFriends.reduce(10, { (result: Int, nextItem: Friend) -> Int in
    print("result: \(result)")
    print("nextItem: \(nextItem)")
    print("nextItem.name: \(nextItem.name)")
    print("nextItem.age: \(nextItem.age)")
    return result + nextItem.age
})


// 축약 표현

let totalAge_01 = myFriends.reduce(0, {(result: Int, nextItem: Friend) in
    return result + nextItem.age
})

let totalAge_02 = myFriends.reduce(0, {result, nextItem in
    return result + nextItem.age
})

let totalAge_03 = myFriends.reduce(0, {result, nextItem in
    result + nextItem.age
})

let totalAge_04 = myFriends.reduce(0, {$0 + $1.age})

let totalAge_05 = myFriends.reduce(0) {$0 + $1.age}




// 조금 더 쉽게 이해하기

let num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var sum = 0
sum = num.reduce(0) {$0 + $1}

print(sum)

var sum1 = 0
sum1 = num.reduce(0, {result, nextItem in
    result + nextItem
})

print(sum1)
