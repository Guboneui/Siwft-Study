import UIKit

let numbers = [1, 1, 1, 5, 5, 9, 7]

// 콜렉션간 변형을 통해
// 유일한 값을 가지는 배열로 변환이 가능하다
// 배열 -> Set 이용

let numberSet = Set(numbers)
print(numberSet)
print(type(of: numberSet))

// set 정렬을 통해 타입 = Set<Int>

var numberArray = Array(numberSet)
print(numberArray)
print(type(of: numberArray))

// 같은 형태여도 타입이 다르기 때문에 Array 형식으로 다시 바꿔준다



numberArray.sort()
print(numberArray)
