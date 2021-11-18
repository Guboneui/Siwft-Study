import UIKit

// 맵 고차함수를 통해 콜렉션의 요소를 변형시킬 수 있습니다.
let friendsArray = ["a", "b", "c", "d", "e", "f"]

// 배열 매핑
let myFriends = friendsArray.map {
    "내 친구: " + $0
}
print(myFriends)


let myPetDictionary = ["고양이": "야옹", "강아지": "멍멍", "송아지": "음매"]

// 딕셔너리 맵핑
let petResult = myPetDictionary.map{ (kind, sound) in
    return ("우리집: \(kind) 울음소리: \(sound)")
}
print(petResult)

// z클로저 축양형 사용
let petResult2 = myPetDictionary.map{
    return "우리집 \($0) \($1)"
}
print(petResult2)



let numbersSet: Set<Int> = [1, 1, 2, 3, 4, 4, 5, 6]

// set 맵핑
let result = numbersSet.map({(number: Int) -> Int in
    return number * 10
})

print("mappedNumbersSet: \(result)")

// 추가적인 클로저 부분 축약

let resultOne = numbersSet.map({(number: Int) in
    return number * 10
})
print(resultOne)

let resultTwo = numbersSet.map({(number: Int) in number * 10})
print(resultTwo)

let resultThree = numbersSet.map({$0 * 10})
print(resultThree)

let resultFour = numbersSet.map{$0 * 10}
print(resultFour)
