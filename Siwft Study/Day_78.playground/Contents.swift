import UIKit

// defer = 미루다
// defer를 이용해 코드블럭 (스코프)
// 마지막에 원하는 처리가 가능하다

func say() {
    print("하나")
    defer {
        // 현재 say 매소드 안에서
        // 제이라 마지막에 실행됩니다
        print("defer called")
    }
    print("둘")
    print("셋")
}

say()


//하나
//둘
//셋
//defer called
