import UIKit

// 배열
let myFriends = ["철수", "영희", "수잔", "제시카"]

let yourFriends = ["철수", "수잔", "제니퍼", "존시나"]

// 배열을 set으로 만들기

let myFriendsSet = Set(myFriends)
let yourFriendsSet = Set(yourFriends)

// 중복되는 것을 제거하고 가져오기

let exceptDuplicateFriends = myFriendsSet.symmetricDifference(yourFriendsSet)

print(exceptDuplicateFriends)
