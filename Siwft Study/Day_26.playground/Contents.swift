import UIKit

struct Pet {
    init() {
        print("Pet이 생성되었습니다 - Struct pet init")
    }
}

//let k = Pet()   // 변수에 할당하는 순간 -> 메모리에 할당 = 생성

// 클래스나 스트럭트 동일하게 적용

struct Friend {
    var name: String
    // 펫을 맴버 변수로 가진다
    // lazy 키워드를 사용하면 인스턴스 생성이 바로 되지 않는다.
    
    //var pet = Pet() // -> 하단의 myFriend에서 바로 Pet 생성됨
    
    lazy var pet = Pet() // -> 바로 생성되지 않음.
    
    //생성자 메소드
    init(_ name: String) {
        self.name = name
        print("Friend가 생성됨")
    }
}


var myFriend = Friend("본의")


// lazy 키워드가 있을때는 나중에 직접 생성 해줘야 생성된다 -> 별도로 호출을 해줘야 한다.
myFriend.pet = Pet()

