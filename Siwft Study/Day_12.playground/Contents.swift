import UIKit

class Friend {
    var name = "본의"
    
    // 생성자 메소드 = 객체 생성시 발동
    init() {
        print("친구가 생겼어요! 이름은 \(name)")
    }
    
    // 메개변수를 가지는 생성자 메소드
    init(_ name: String){
        self.name = name
        print("친구가 생겼어요! 이름은 \(name)")
    }
    
    // 해당 인스턴스가 객체가 메모리에서 할당 해제 될 떄 발동
    
    deinit{
        print("친구가 없어졌어요. 이름은 \(name)")
    }
    
    //deinit 검증을 위해 작성
    var calledTimes = 0
    let Max_Times = 5
    
    static var instancesOfSelf = [Friend]()
    class func destroySelf(object: Friend){
        instancesOfSelf = instancesOfSelf.filter {
            $0 !== object
        }
    }
    
    func call() {
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > Max_Times {
            Friend.destroySelf(object: self)
        }
    }
}

//var myFirtFriend = Friend()
//let mySecondFriend = Friend("승빈")
//

weak var selfDestructingObject = Friend("승빈")

if selfDestructingObject != nil {
    selfDestructingObject!.call()
} else {
    print("object no longer exists")
}


// 나의 정리

//weak = 약한 참조
//weak 속성을 사용하는 객체는 항상 optional 타입이어야 한다.
// 객체가 생성되지만 바로 객체가 해제되어 nil 이 된다 -> 메모리가 해제될 경우 자동으로 레퍼런스가 nil로 초기화 해준다.
