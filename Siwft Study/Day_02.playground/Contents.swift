import UIKit

var myArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

for item in myArray {
    print(item)
}


//where는 조건을 나타낸다.
for item in myArray where item > 5 {
    print(item)
}


// 서브 스크립트: 원하는 값을 쉽게 찾기 위해서 정의하는 문법

// 범위 연산자를 통해 특정 범위 추출
print(myArray[2...5])

// 첫 번째 요소 접근
print(myArray[myArray.startIndex])

// 마지막 요소 접근
//print(myArray[myArray.endIndex])    // endIndex가 마지막 인덱스는 아님
print(myArray.endIndex) // -> 크기를 불러온다고 생각

print(myArray[myArray.index(before: myArray.endIndex)]) // 따라서 before 키워드와 endIndex를 적절히 사용하여 마지막에 접근해야 한다

// 단순히 처음과 마지막 값을 가져오는 방법은
print(myArray.first!)
print(myArray.last!)
// first와 last 키워드를 통해 값을 가져올 수 있다.
