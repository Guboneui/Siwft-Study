import UIKit

//String을 반환하는 클로져

let myName: String = {
    return "구본의"
}()
print(myName)


//매개변수가 있는 클로저
//클로저 정의
let myRealName: (String) -> String = { (name: String) -> String in
    return "저는 \(name)"
}
print(myRealName("본의"))

let myRealNameLogic: (String) -> Void = { (name: String) in
    print(name)
}

myRealNameLogic("aaa")


//클로저 자체는 메소드를 실행
//반환하는 값이 없다면 Void를 통해서 처리할 수 있다.
