import UIKit

// CustomStringConvertible을 통해
// enum이나 struct, class 객체 등의 설명 변경이 가능


enum Fruit: CustomStringConvertible {
    case apple
    case melon
    
    var description: String {
        switch self {
        case .apple:
            return "꿀 사과"
        case .melon:
            return "꿀 멜론"
        default:
            return "?????"
        }
    }
}


struct Pet: CustomStringConvertible{
    var name: String
    var description: String{
        return "우리집 강아지: \(name)"
    }
    

}


// 디스크립션 내용 출력

let myFruit = Fruit.apple
print("myFruit: \(myFruit)")

let myDog: Pet = .init(name: "순심이")
print("myDog: \(myDog)")


// description 은 정해져 있는 값.
