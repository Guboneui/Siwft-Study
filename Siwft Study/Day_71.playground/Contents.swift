import UIKit

class Sword { // 공격할때 마다 내구도가 감소하는 무기 클래스
    var durability = 100 //내구도
    // 무기의 내구도에 따가 가져올때 (get) 값이 변하는 변수
    var itemInfo: String {
        get {
            switch durability {
            case 50...100:
                return "Good"
            case 10...50:
                return "SoSo"
            default:
                return "Bad"
            }
        }
    }
    
    func attackedMonster() {
        self.durability -= 40
    }
}

let mySword = Sword()
mySword.attackedMonster()
print(mySword.itemInfo)
mySword.attackedMonster()
print(mySword.itemInfo)
mySword.attackedMonster()
print(mySword.itemInfo)
