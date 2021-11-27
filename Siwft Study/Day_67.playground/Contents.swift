import UIKit

let statusCode = 403

if (400..<500).contains(statusCode) {
    print("에러 발생")
}


// 패턴 매칭 연산자
// ~= 를 통해 보다 간결하게 표현 가능
if 400..<500 ~= statusCode {
    print("패턴 매칭 연산자를 통한 에러")
}
