import UIKit

struct Pet {
    var name: String
    var description: String {
        get {
            return "우리집" + name
        }
    }
}

let pets: [Pet] = [
    Pet(name: "순심이"),
    Pet(name: "검둥이"),
    Pet(name: "뚱이")
]

// 아래와 같이 객체 인스턴스의 요소에만 접근하는 경우
let myPets = pets.map{$0.description}
print(myPets)

// 키패스를 이용하면 보다 간결하게 사용 가능
print("----------------")

let myLovelyPets = pets.map(\.description)
print(myLovelyPets)
