import UIKit

// struct는 클래스와 달리 생성자 메소드가 자동 탑제되어 있다.

struct Youtuber {
    var name: String
}

let youtuber = Youtuber(name: "본의")
print(youtuber)

// 생서자를 안에서 따로 지정하는 것도 가능은 하지만...
struct Friend {
    var name: String
    init() {
        name = "본의"
    }
}

let myFriend = Friend()
print(myFriend)


// extension을 통해 별도로 생성자 지정도 가능하다.

struct Pet {
    var name: String
}

extension Pet {
    init() {
        name = "순심이"
    }
}

let myPet = Pet()
print(myPet)

let myHousePet = Pet(name: "순심~")
print(myHousePet)
