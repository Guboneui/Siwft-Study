import UIKit

//옵셔널
//값이 있는지 없는지 모른다


// ! ?
// ! = 이 값이 무조건 있어야 해요.
// ? = 이 값이 있을수도 있고, 없을수도 있어요.

// 타입에는
// Int, Int?
// String, String?
// 일반적인 자료형에서는 (Int, String) 절대로 nil 값을 가질 수가 없습니다.
// 하지만 nil 을 사용하기 위해서는 옵셔널 타입의 변수로 타입을 지정을 해줘야 합니다.

var k: Int = 90

var somVariable: Int?

//if somVariable == nil {
//    somVariable = 90
//}


print(somVariable)
//print(somVariable!) // nil이면 절대 안된다.



//언랩핑 -> 감싸져 있는 것을 벗기는 것 = 옵셔널을 벗기는 것  -> '옵셔널 언랩핑'
if let otherVariable = somVariable {
    print(otherVariable)
} else {
    print("값이 없음")
}

somVariable = nil

//someVariable이 비어있으면 즉 값이 없으면 기본값으로 넣겠다

let myValue = somVariable ?? 10
print(myValue)


func unwrap(param: Int?) {
    print("unwrap() calles")
    guard let unWrappedParam = param else {
        print("값이 없음")
        return
    }
    print(type(of: unWrappedParam))
    print(unWrappedParam)
}


var firstValue: Int? = 10
unwrap(param: firstValue)
