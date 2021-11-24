import UIKit

struct MyPet {
    enum Kind {     // struct 안에 enum 타입
        case cat    // kind enum case
        case dog
        
        // enum 은 value와 name이라는 변수를 가지고
        var value: String {
            switch self {
                case .cat:
                    return "고양이"
                case .dog:
                    return "강아지"
            }
        }
        
        var name: String {
            switch self {
                case .cat:
                    return "레오"
                case .dog:
                    return "순심이"
            }
        }
    }
    
    let kind: Kind  //MyPet 스트럭트가 가지는 kind 변수
    var description: String {
        return "우리집 \(kind.value) \(kind.name)이에요"
    }
}

let myCat = MyPet(kind: .cat)
print(myCat.description)

let myDog = MyPet(kind: .dog)
print(myDog.description)

