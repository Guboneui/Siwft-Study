import UIKit

// 콜렉션 안에 콜렉션이 들어가있는 형태로 2차원임

let myFriends = [["a"], ["b"], ["a", "b"], ["c", "d"], ["e", "f", "g"]]

// flatmap을 통해 1차원으로 만들어 줍니다.
// 말 그래도 플랫: 납작하게 눌러준다

let flatMapped = myFriends.flatMap { (item: [String]) in
    return item
}

print(flatMapped)
