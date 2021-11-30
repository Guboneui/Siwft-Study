import UIKit

let names = ["a", "b", "c"]
// allSatisfy를 통해 콜렉션 안 요소들이
// 모두 같은 조건에 부합하는지 확이이 가능합니다.
var nameCountAtLeastTwo = names.allSatisfy { (name: String) -> Bool in
    name.count <= 2
}

print("nameCountAtLeastTwo: \(nameCountAtLeastTwo)")

let foreignNames = ["제시", "제임스", "맥"]
nameCountAtLeastTwo = foreignNames.allSatisfy({
    $0.count <= 2
})

print("nameCountAtLeastTwo: \(nameCountAtLeastTwo)")
