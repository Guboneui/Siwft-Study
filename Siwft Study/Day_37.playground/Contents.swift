import UIKit

// 친구 클래스
class Friend {
    var name: String = ""
    // nickname 게터와 세터 설정을 통해
    // 해당 맴버 변수 데이터를 가져올 때
    // 해당 맴버 변수에 값을 설정할 때 로직을 추사할 수 있다
    
    var nickname: String {
        get {
            return "내 친구: " + name
        }
        set {
            name = newValue + " 내가 지어준 별명"
        }
    }
}


let myFriend = Friend()
myFriend.name = "본의"
print(myFriend.nickname)

myFriend.nickname = "빡빡이"
print(myFriend.nickname)
