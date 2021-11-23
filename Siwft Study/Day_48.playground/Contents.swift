import UIKit

class MyClass {
    // 클래스 메소드는 인스턴스를 생성하지 않고 메소드 호출이 가능한데
    // final class 메소드랑 static class 메소드도 동일
    
    class func sayHi() -> String {
        return "sayHi"
    }
    
    static func sayHello() -> String {
        return "sayHello"
    }
    
    final class func sayHelloFinal() -> String {
        return "sayHelloFinal"
    }
}

print(MyClass.sayHi())
print(MyClass.sayHello())
print(MyClass.sayHelloFinal())

// 클래스 메소드는 오버라이딩 가능하지만 스태틱과 파이널 메소드는 부모클래스 메소드를 오버라이딩 할 수 없다.

class HahaClass: MyClass {
    override class func sayHi() -> String {
        return "HaHaclass sayHi method"
    }
}

print(HahaClass.sayHi())
