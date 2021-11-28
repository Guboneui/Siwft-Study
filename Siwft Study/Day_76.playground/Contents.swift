import UIKit

let friends: [String?] = [nil, "aa", "bb", nil, "cc"]

// case let을 활용해서
// 콜렉션에 값이 있는 것들만 가져올 수 있다

for case let friend? in friends {
    print("친구가 있다: \(friend)")
}
