import UIKit

let friends: [String?] = ["철수", nil, nil, "본의"]
// case let을 통해 값이 비어있는지 여부를 알 수 있다
// 데이터가 있다면 .some

for case let .some(aFriend) in friends {
    print(aFriend)
}

// 데이터가 없다면 즉 nil이라면 .none
for case let .none in friends {
    print("친구가 없다.")
}

for (index, aFriend) in friends.enumerated() {
    switch aFriend {
    case let (.some(aFriend)): // 데이터가 있다면
        print("index: \(index), aFriend: \(aFriend)")
    case let (.none):
        print("index: \(index), 친구가 없다")
    }
}
