import UIKit

let friends: [String?] = ["철수", nil, nil, "영희"]

// case let 변수? 옵셔널 표시로
// 값이 있을 때만 가져올 수 있다
// case let .some(변수)와 동일

for case let aFriend? in friends {
    print(aFriend)
}
