import UIKit

// CaseIterable 프로토콜을 통해
// 이넘 타입도 콜렉션처럼 사용할 수 있습니다.

enum Pet: String, CaseIterable {
    case cat = "고양이"
    case dog = "강아지"
    case cow = "소"
}

// allCases를 통해
// 이넘의 타입들을 콜렉션으로 가져옵니다.

let petKindsCount = Pet.allCases.count
print("애완동물 종류 수: \(petKindsCount)")

for petTypeItem in Pet.allCases {
    print(petTypeItem.rawValue)
}
