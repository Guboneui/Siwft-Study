import UIKit

// 튜플은 스위프트 콜렉션중 하나
// 콜력션: 배열, 딕셔너리, 셋, 튜플
// 튜플은 키와 값으로 이뤄진 묶음

var myPet = (name: "순심이", kind: "강아지", age: 3)
print(myPet)
print(myPet.name)
print(myPet.kind)
print(myPet.age)


// 요소를 순서대로 접근하는 것도 가능

print(myPet.0)
print(myPet.1)
print(myPet.2)


// 튜플 요소에 접근해서 값 변경이 가능
myPet.name = "귀여운 순심이"
print(myPet)


// 하지만 값 변경 시 자료형 타입에 맞춰서 변경이 이뤄져야함
