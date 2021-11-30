import UIKit
import CoreFoundation

struct MyFood {
    var name: String
}

// Error도 enum이기 때문에 케이스 안에 데이터를 넣을 수 있다

enum MyHomeError: Error, CustomStringConvertible {
    case iHateCleanMyRoom
    case dinnerFail(with: MyFood? = nil)
    case unknown
    var description: String {
        switch self {
        case .dinnerFail:
            return "dinnerFail"
        case .iHateCleanMyRoom:
            return "iHateCleanMyRoom"
        case.unknown:
            return "unknown"
        }
    }
    
    // 에러 타입을 생성하는 스태틱 메소드
    
    static func initialize(string: String, with data: MyFood) -> MyHomeError {
        switch string {
        case "dinnerFail":
            return MyHomeError.dinnerFail(with: data)
        case "iHateCleanMyRoom":
            return MyHomeError.iHateCleanMyRoom
        default:
            return MyHomeError.unknown
        }
    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let myPasta = MyFood(name: "까르보나라")
        let myError = MyHomeError.initialize(string: "dinnerFail", with: myPasta)
        switch myError {
        case .dinnerFail(let food):
            print("음식에 실패: \(String(describing: food?.name))")
        case .iHateCleanMyRoom:
            print("청소하기 싫어")
        default:
            break
        }
    }
}
