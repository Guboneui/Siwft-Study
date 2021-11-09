import UIKit

//옵셔널
//값이 있는지 없는지 모른다

var somVariable: Int? = nil

if somVariable == nil {
    somVariable = 90
}

print(somVariable)





//언랩핑 -> 감싸져 있는 것을 벗기는 것 = 옵셔널을 벗기는 것
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
    print(unWrappedParam)
}


var firstValue: Int? = nil
unwrap(param: firstValue)
