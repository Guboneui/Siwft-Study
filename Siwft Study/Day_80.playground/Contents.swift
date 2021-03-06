import UIKit
import os

enum PetType: String {
    case dog = "강아지"
    case cat = "고양이"
    case none
    // Enum에 생성자를 두어 rawValue로 이넘타입을 가져올 수 있다
    init(value: String) {
        switch value {
        case "강아지": self = .dog
        case "고양이": self = .cat
        default: self = .none
        }
    }
}


// RawValue로 이넘 생성
let petType = PetType(rawValue: "강아지")
switch petType {
    case .dog:
        print("dog")
    case .cat:
        print("cat")
    default:
        print("none...")
}
