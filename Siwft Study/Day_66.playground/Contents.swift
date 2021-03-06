import UIKit

// Any를 통해 어떠한 자료형도 받을 수 있다
// 자료형이 Any인 배열

var things = [Any]()

struct Pet {
    var name: String
    var kind: String
}

things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("안녕하세요")
things.append((3.0, 5.0))
things.append(Pet(name: "댕댕이", kind: "강이지"))

// 요롷게 클로저 함수도 넣을 수 있다

things.append({(name: String) -> String in "안녕 친구들 \(name)"})

let sayHi: (String, String) -> String = { (title: String, name: String) -> String in
    return "안녕 \(title) \(name)"
    
}

things.append(sayHi("aaa", "bbb"))
let test = things[7]
print(test)

let a = "a"
let b = "b'"

things.forEach {
    print($0)
}



