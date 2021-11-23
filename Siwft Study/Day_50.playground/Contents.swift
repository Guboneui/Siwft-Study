import UIKit

// open 키워드를 통해 프로젝트 내 어디서든 사용가능합니다.
// 즉 다른 외부 모듈에서도 상속 및 오버라이드가 가능하다
// ex. 오픈 소스 및 외부 라이브러리 구조, 애플 프레임워크
// UIViewController 클래스 명 cmd + 클릭 하면 open 키워드 확인 가능
// 프레임워크..? 를 만들때 많이 사용함.

open class Utils {
    open class func printHello() {
        print("hello from util")
    }
}


// 다른 모듈에서 사용가능한점이 public 키워드와는 다름
// public은 외부 모듈에서 상속 및 오버라이드가 불가능

class Test: Utils {
    override class func printHello() {
        print("aaa")
    }
}


print(Test.printHello)
print("----")
print(Test.printHello())
