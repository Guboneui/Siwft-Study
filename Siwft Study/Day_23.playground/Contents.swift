import UIKit

// 이름 관련 프로토콜
protocol Naming {
    var lastname: String {get set}
    var firstname: String {get set}
    func getName() -> String
}

// 익스텐션을 통해 프로토콜에 메소드 추가
extension Naming {
    func getFullName() -> String {
        return self.lastname + self.firstname
    }
}

// Naming 프로토콜을 임플레먼트하는 Struct
struct Friend: Naming {
    var lastname: String
    var firstname: String
    func getName() -> String {
        print(self.firstname)
        return self.firstname
    }
}

let myFriend = Friend(lastname: "구", firstname: "본의")
let name = myFriend.getName()

print("name: \(name)")

// Friend Struct에는 없지만
// 프로토콜 확장을 통해
// 메소드가 추가된 것을 확인할 수 있음

let fullName = myFriend.getFullName()
print("풀네임: \(fullName)")
