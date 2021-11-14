import UIKit


//매개변수 name을 받는 메소드
// _ 언더바를 넣어 메소드호출시에 이름 안써도 돰
func sayName(_ name: String) {
    print("안녕 내 이름은 \(name)이야")
}

sayName("본의")
// 하지만 언더바를 통해 구현했을 경우
// 오히려 매개변수에 name: "" 이라고 작성한 경우 에러가 발생함.
// 상황에 맞게 사용


// 메소드에 매개변수로 들어오는 값은 변경 할 수가 없다.
// 하지만 inout 키워드를 이용하면 값 변경 가능

func sayYourName(_ name: inout String) {
    name = "구" + name       //만약 Inout 변수를 선언하지 않은 경우 "cannot assign to value: '~~' is a let constant 에러가 발생함
    print("제 이름은: \(name)")
}

// inout 메소드에 들어가는 값은
// 변경 가능해야 하기 때문에
// 메소드에 바로 값을 넣지 못하고
// 변수에 한번 값을 담은 뒤에 넣어야 한다.

var name = "asdfadsf"

sayYourName(&name)

