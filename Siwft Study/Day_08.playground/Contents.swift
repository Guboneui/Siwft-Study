import UIKit

//함수 정의 매개변수 이름 설정

func myFunc(name: String) -> String {
    
    print(name)
    return name
}

//함수, 메소드를 호출한다.
myFunc(name: "안녕하세요")


//함수 메소드 정의

func mySecondFunc(with name: String) -> String {
    print(name)
    return name
}

mySecondFunc(with: "with로 파라미터 명 변경")


func myThirdFunc(_ name: String) -> String {
    print(name)
    return name
}

myThirdFunc("파라미터 이름 없이 호출")
