import UIKit

struct Friend {
    var name: String? = ""
    var age: Int? = 0
}

// 친구 struct를 생성하는 빌더 클래스

class FriendBuilder {
    private var friend: Friend = Friend()
    
    public func withName(_ name: String) -> FriendBuilder {
        // 만들고자 하는 녀석을 설정하고
        friend.name = name
        // 빌더 자기 자신을 반환합니다
        // 이를 통해 체인처럼 유연하게 설정이 가능합니다.
        return self
    }
    
    public func withAge(_ age: Int) -> FriendBuilder {
        friend.age = age
        return self
    }
    
    // 마지막으로 빌더가 만든 녀석을 반환하면서 마무리
    public func build() -> Friend {
        return self.friend
    }
}

// 디자인 패턴은 크게 3가지고 나뉩니다
// 객체 생성, 행위, 구조
// 객체 생성 중 빌더 패턴을 이용해
// 객체 생성을 유연하게 할 수 있습니다.

let myFriend = FriendBuilder()
    .withName("본의")
    .withAge(20)
    .build()

print(myFriend)
