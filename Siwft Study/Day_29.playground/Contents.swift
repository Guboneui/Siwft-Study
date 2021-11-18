import UIKit

struct MyPet {
    var kind = "고양이"
    // 내부 스트럭트나 클래스 안에서만 값을 설정
    private (set) var name = "찰스"
    // 스트럭트에서 멤버 변수의 값을 변경할때는 메서드에 mutating을 넣어줘야 변경 가능
    mutating func setName(to petName: String) {
        self.name = petName
    }
}


var myPet = MyPet()
print("myPet.kind: \(myPet.kind)")

// 외부에서 접근은 가능하지만
print("myPet.name: \(myPet.name)")

// private(set) 이라서 값 견경은 매부에서만 가능
// 값을 변경 즉 설정 set 할려고 하면 에러뜸
// myPet.name = "제임스" -> 오류

// 내부에 있는 메소드 사용
// 내부에서는 값 변경이 가능하다
myPet.setName(to: "본의")
print("myPet.name: \(myPet.name)")


