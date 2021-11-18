import UIKit

let myFriendsArray = ["a", "b", "c", "d", "e"]

// foreach 반복문에서
// enumerated를 통해
// 해당 하는 녀석의 인덱스를 가져올 수 있습니다.
// 인덱스, 가져온 아이템

for (friendsIndex, friendItem) in myFriendsArray.enumerated() {
    print("\(friendsIndex) : \(friendItem)")
}
