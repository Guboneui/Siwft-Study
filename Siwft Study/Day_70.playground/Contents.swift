import UIKit

var count = 6
let max = 5

// 반복한다
// 일단 실행한다
// 다른 언어에서의 do while 과 비슷

repeat {
    count += 1
    print("count: \(count)")
} while count < max // 5보다 작을 때 까지

print("count: \(count)")

// while 문에서는 조건을 먼저 보고 들어가기 때문에 로직을 타지 않는다

while count < max {
    count += 1
    print("while문 count: \(count)")
}

// 오류가 발생할 수 있기 때문에 잘 사용하지 않는다.
