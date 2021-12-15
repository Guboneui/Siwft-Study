import UIKit

// 애완동물 관련 프로토콜
protocol PetHaving {
    // assiciatedtype을 통해
    // 제네릭으로 어떠한 자료형이든 가질 수 있다.
    
    associatedtype T
    
    // 애완동물 배열
    var pets: [T] {get set}
    // mutating을 통해 Struct에서 멤버 변수 값 변경
    mutating func gotNewPet(newPet: T)
}

// 익스텐션으로 프로토콜의 메소드 로직 구성
extension PetHaving {
    mutating func gotNewPet(newPet: T) {
        self.pets.append(newPet)
    }
}


enum Animal {
    case cat, dog, bird
}

// 애완동물 프로토콜을 임플레먼트 하는 친구 스트럭트
struct Friend: PetHaving {
  
    // 배열의 자료형이 Animal enum으로 사용 가능
    var pets = [Animal]()
}

//애완동물 프로토콜을 임플레먼트 하는 친구 Struct
struct Family: PetHaving {
    // 배열의 자료형이 문자열
    var pets = [String]()
}

var myFriend = Friend()
myFriend.gotNewPet(newPet: Animal.cat)
myFriend.gotNewPet(newPet: Animal.dog)
print(myFriend.pets)

var myFamily = Family()
myFamily.gotNewPet(newPet: "거북이")
myFamily.gotNewPet(newPet: "토끼")
myFamily.gotNewPet(newPet: "강아지")
print(myFamily.pets)
