import UIKit

// sayHi를 강제하는 토크 프로토콜
protocol Talk {
    func sayHi()
}

// 베프, 올드프렌드, 토크클래스들은 토크 프로토콜을 임플리먼트
// 하기때문에 sayHi 메소드 정의가 강제됨

class BestFriendTalk: Talk {
    func sayHi() {
        print("BestFriendTalk - sayHi()")
    }
}

class OldFriendTalk: Talk {
    func sayHi() {
        print("OldFriendTalk - sayHi()")
    }
}

// 친구 클래스
class Friend {
    // 맴버 변수로서 토크를 가진다
    // 외부 에서도 주입이 가능하도록 프라이빗으로 안함
    
    var talk: Talk?
    
    init() {
        
    }
    // 생성자 메소드를 통해 토크 주입 가능
    init(talk: Talk) {
        self.talk = talk
    }
    // 의존성 주입이 완료되? 토크로 말한다
    func sayHello() {
        talk?.sayHi()
    }
    
    // 의존성 주입 메소드
    func setTalk(talk: Talk) {
        self.talk = talk
    }
}

// 의존성 주입이 되지 않아서 출력되는 것이 없음
let test = Friend()
test.sayHello()


// 친구 인스턴스 생성시에 토크를 주입시킴
let bfTalk = BestFriendTalk()
let myBestFriend = Friend(talk: bfTalk)

myBestFriend.sayHello()


// 친구 인스턴스를 만들고 맴버 변수에 찔러넣어서 주입함

let myOldFriendTalk = OldFriendTalk()
let myOldFriend = Friend()
myOldFriend.talk = myOldFriendTalk // 여기서 주입
myOldFriend.sayHello()


// 의존성 주입은 크게 3가지 방법
// 1. 생성자 메소드로 찔러 넣기
// 2. 멤버변수에 직접 찔러 넣기
// 3. 주입 메소드를 따로 만들어서 찔러넣기 (잘 사용 안함.)
