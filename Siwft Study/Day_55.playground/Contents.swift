import UIKit

class Pet {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Cat: Pet {
    var hair: String
    init(name: String, _ hair: String) {
        self.hair = hair
        super.init(name: name)  // 부모 클래스의 생성자 호출
    }
}


class Dog: Pet {
    var kind: String
    init(_ name: String, kind: String) {
        self.kind = kind
        super.init(name: name)
    }
}


let myDog = Dog("순심이", kind: "시고르자브종")
let myCat = Cat(name: "레오", "black")
let myPets: [Pet] = [myDog, myCat]

myPets.forEach {    // 콜렉션에 forEach로 반복문 돌리기
    
    print($0)
    
    if $0 is Dog {  // is를 통해 해당 객체의 자료형 판별 가능
        print("\($0.name)은 강아지에요")
    } else if $0 is Cat {
        print("\($0.name)은 고양이에요")
    }
    
    
}
