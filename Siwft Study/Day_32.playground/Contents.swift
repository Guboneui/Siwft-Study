import UIKit

var myArray = ["one", "2", "three", "4"]

// map은 변형시키는 값으로 nil 도 넣지만
let intArray = myArray.map({ (item: String) in
    return Int(item)
})

print(intArray) // [nil, Optional(2), nil, Optional(4)]


// compactMap 메소드는
// 변형시키는 값이 nil 이면
// 해당 요소를 제거
// + 옵셔널로 나오지 않음

let onlyIntArray = myArray.compactMap({ (item: String) in
    return Int(item)
})

print(onlyIntArray)

// map은 nil을 반환하기 때문에 옵셔널로 값을 반환하지만
// compactMap 은 제거하기 때문에 옵셔널이 아닌 값으로 반환
