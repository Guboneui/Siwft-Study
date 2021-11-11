import UIKit

//매개변수로서의 클로저
//메소드라고 생각하면 된다


//completion 이라는 클로저를 매개변수로 가지는 메소드 정의
func sayHi(completion: () -> Void) {
    print("sayHi() called")
    sleep(2)
    
    //completion 클로저 실행
    completion()
}

//메소드 호출부에서 이벤트 종료를 알 수 있다.
sayHi(completion: {
    print("2초가 지났다")
})


sayHi(){
    print("2초가 지났다 2번쨰 case")
}

sayHi{
    print("2초가 지났다 3번째 case")
}


//매개변수로서의 클로저가 디시 매개변수를 갖는다?
//매개변수로서 데이터를 반환하는 클로저

func sayHiWithName(completion: (String) -> Void) {
    print("sayHiWithName called")
    sleep(2)
    //클로저를 실행과 동시에 데이터를 반환
    completion("오늘도 스위프트 공부중인가요?")
}

sayHiWithName(completion: { (comment: String) in
    print("2초뒤에 comment 호출 -> \(comment)")
})

sayHiWithName(completion: { comment in
    print("2초뒤에 comment 호출 --> \(comment)")
})

sayHiWithName{ comment in
    print("2초뒤에 comment 호출 ---> \(comment)")
}

sayHiWithName{
    print("2초뒤에 comment 호출 ----> \($0)")        //$를 통해서 첫번째도 들어오는 변수를 처리할 수 있다.
}


//매개변수로서 데이터를 여러개 반환하는 클로저
func sayHiWithFullName(completion: (String, String) -> Void) {
    print("sayHiWithFullName called")
    sleep(2)
    //클로저를 실행과 동시에 데이터를 반환
    completion("오늘도 스위프트 공부중인가요?", "정말이에요?")
}

sayHiWithFullName{ first, second in
    print("첫번째 매개변수 -> \(first)")
    print("두번째 매개변수 -> \(second)")
}


//만약 사용하고 싶지 않은 변수가 있다면 _ 를 사용한다
// _ 는 생략의 의미

sayHiWithFullName{ _, second in
    print("second만 호출하고 싶어요: \(second)")
}


sayHiWithFullName{
    print("첫번째 매개변수 --> \($0)")
    print("두번째 매개변수 --> \($1)")
}


//completion을 받기 싫을 때 옵셔널을 통해서 처리할 수 있다.
//같은 메소드에서 서로 다른 처리를 할 수 있다.
//api 통신에서도 동일하게 옵셔널을 통해서 처리할 수 있는 것 처럼과 같은 의미로 해석
// () -> Void 자체가 클로저
// 기본은 nil로 준다
func sayHiOptional(completion: (() -> Void)? = nil) {
    print("sayHiOptional() called")
    completion?()
}

// completion을 호출하지 않을 때
sayHiOptional()

// completion을 호출
sayHiOptional(completion: {
    print("optional called")
})



//결론
//클로저는 메소드 입니다.
// () -> Void   반환형이 없다 = Void
// 아래의 형태와 같음
func completion1() {
    
}

// (String) -> Void
func completion2(userInput: String) {
    
}

// (String, String) -> Void
func completion3(first: String, second: String) {
    
}




// (Int) -> String
//메소드로 표현할 경우
func transform(num: Int) -> String {
    return "숫자: \(num)"
}

var myNumbers: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
//print(myNumbers.map({ (number: Int) -> Int in
//    return number
//}))


var transformedNumbers1 = myNumbers.map { aNumber in
    return "숫자: \(aNumber)"
}

var transformedNumbers2 = myNumbers.map { (aNumber: Int) -> String in
    return "숫자: \(aNumber)"
}

var transformedNumbers3 = myNumbers.map {
    return "숫자: \($0)"      //최대 축약형
}


print(transformedNumbers1)
