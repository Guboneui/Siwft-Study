import UIKit

// enum 안에 enum을 중첩으로 두어 사용이 가능
enum MyFavoriteFood {
    case chocolate
    case porkBelly
    case pasta(ItalyPasta)
    
    enum ItalyPasta {
        case carbonara
        case tomato
        case rose
    }
}

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let favoriteType = MyFavoriteFood.pasta(.carbonara)
        let favoriteFoodType = MyFavoriteFood.chocolate
        
        switch favoriteType {
        case .pasta(let pastaType):
            print("pastaType: \(pastaType)")
            switch pastaType{
            case .carbonara:
                print("까르보나라")
            case .tomato:
                print("토마토")
            case .rose:
                print("로제")
            }
        default: break
        }
    }
}

