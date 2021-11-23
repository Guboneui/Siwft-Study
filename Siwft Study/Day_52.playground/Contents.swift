import UIKit

// 객체 생성시 싱클톤 패턴으로 한 메모리 공간에 값을 올릴 수 있다.
// 특정 용도로 객체를 하나만 생성하여 공용으로 사용하는 방법


class Pet {
    static var shared = Pet()   // 전역으로 생성할 것이기 때문에 static 사용
    private init() {}   // 혹시라도 init 함수를 호출해 인스턴스 중복 생성을 막아줌
}

let myPet = Pet.shared
let myPet2 = Pet.shared

print(myPet)
print(myPet2)
