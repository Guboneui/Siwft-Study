import UIKit

protocol PetDelegate {
    func sayHello()
    func saySomething()
}

// 프로토콜 익스텐션을 통해 메소드를
// 옵셔널로 설정할 수 있다.
// 즉 준수하지 않아도 된다


extension PetDelegate {
    func saySomething() {
        
    }
}

class Pet: PetDelegate {
    func sayHello() {
        print("강아지 안녕")
    }
    
    func saySomething() {
        print("optional")
    }
}

// 프로토콜을 extension 하여 동일한 함수 명을 지정한다면
// 해당 메소드는 옵셔널 타입으로 변환된다.
// 메소드 자체가 옵셔널이 되는 것이지, 반환값이 옵셔널이 되는 것은 아님.


let myDog = Pet()
myDog.saySomething()
myDog.sayHello()
