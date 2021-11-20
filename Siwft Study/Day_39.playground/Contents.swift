import UIKit

// swift 5.3
// 매개변수로 클로저를 다수로 가지는 메소드

func someFunctionWithClosure(completion: () -> Void,
                             secondCompletion: (String) -> Void,
                             thirdCompletion: (Int) -> Void) {
    
    print("someFunctionWithClosure() Called")
    
    completion()
    secondCompletion("두번째 클로저")
    thirdCompletion(3)
}

// 멀티 트레일링 클로저 사용이 가능합니다.

someFunctionWithClosure {
    
} secondCompletion: {
    print("\($0)")
} thirdCompletion: {
    print("\($0)")
}
