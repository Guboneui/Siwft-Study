import UIKit
import Darwin


// 클래스 -> 생성자를 만들어 주게 되면 메모리에 올라가게 됌.


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



class K {
    var name: String
    
    init(_ name: String = "이름 없음"){
        self.name = name
        print("K가 메모리에 올라갔습니다.")
    }
    
    deinit{
        print("K가 메모리에서 사라짐 - ", self.name)
        
    }
    
    var calledTimes = 0
    let MaxTimes = 5
    
    static var instancesOfSelf = [K]()
    class func destroySlef(object: K){
        instancesOfSelf = instancesOfSelf.filter{(aK: K) in
            aK !== object
        }
    }
    
    func call() {
        calledTimes += 1
        print("called \(calledTimes)")
        if calledTimes > MaxTimes {
            K.destroySlef(object: self)
        }
    }
    
    
}

let firstK = K("First_K")
let secondK = K()

// Unmanaged.passUnretained(객체).toopaque()
// 로 해당 객체의 메모리 주소를 프린트 할 수 있다.

let anObjectMemoryAddress = Unmanaged.passUnretained(firstK).toOpaque()
let secondMemorryAddress = Unmanaged.passUnretained(secondK).toOpaque()

print("firstK -> \(firstK)")
print("anObjectMemoryAddress -> \(anObjectMemoryAddress)")

print("secondK -> \(secondK)")
print("secondMemorryAddress -> \(secondMemorryAddress)")


weak var kDestoried = K("테스트")
if kDestoried != nil {
    kDestoried!.call()
} else {
    print("객체가 더이상 메모리에 없습니다.")
}
