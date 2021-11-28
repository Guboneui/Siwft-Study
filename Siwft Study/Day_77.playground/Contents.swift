import UIKit

var things = [Any]()

struct Pet {
    var name: String
}

struct Friend {
    var name: String
}

things.append(0)
things.append(42)
things.append(Friend(name: "본의"))
things.append(Friend(name: "승빈"))
things.append("hello")
things.append((3.0, 5.0))
things.append(Pet(name: "순심~"))
things.append({(name: String) -> String in "난 \(name)이라고 해"})

// any 타입의 배열을 스위치 문으로 처리 가능
for thing in things {
    switch thing {
    case 0 as Int:
        print("숫자 0이에요")
    case let someInt as Int where someInt > 10:
        print("someInt \(someInt)는 10보다 크다")
    case is Friend:
        print("들어온게 친구 자료형")
    case let someString as String:
        print("a string value of \(someString)")
    case let (x, y) as (Double, Double):
        print("an (x, y) point at \(x), \(y)")
    case let myDog as Pet:
        print("우리집 강아지: \(myDog.name)")
    case let sayHi as (String) -> String :
        print(sayHi("본의)"))
    default:
        print("default")
    }
}
