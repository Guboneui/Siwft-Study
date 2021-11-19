import UIKit
import Foundation

var myFriends = [
    "BF": "본의",
    "highSchool": "School"
]

if let myBF = myFriends["BF"] {
    print(myBF)
} else {
    print("해당하는 이름이 없습니다.")
}


// gaurd let은 함수 형태에서만 사용 가능하기 때문에
// playGround 에서는 if let을 통해서 확인한다.


// 만약에 원하는 값이 없으면 default 값을 지정할 수 있음
let myFriend = myFriends["hohoBF", default: "친구 없음"]
print(myFriend)

myFriends["BF"] = "보니보니"
print(myFriends)


//값 추가
myFriends["hoho"] = "호호1"
//myFriends["hoho"] = nil -> default로 값 적용 됌
print(myFriends)

let someValue = myFriends["hoho", default: "친구 없음"]

print(myFriends)
print(someValue)

myFriends.updateValue("하", forKey: "hoho")

let hoho = myFriends["hoho", default: "친구 없음"]
print(hoho)


//딕셔너리에 값 추가 방법
// 1.
myFriends["BF"] = "구본의"
// 2.
myFriends.updateValue("123", forKey: "num")

print(myFriends)



// 빈 딕셔너리 생성 방법
let emptyDictionary = [String: Int]()
let myEmpryDic = Dictionary<String, Int>()


for item in myFriends {
    print(item)
}


