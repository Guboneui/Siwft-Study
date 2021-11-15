import UIKit


// 자료형이 Error인 enum
enum MismatchError: Error {
    case nameMismatch
}

// throw를 통해 에러를 밖으로 던진다
// 에러를 밖으로 보낸다고 메소드 반환 부분에 throws

func guessMyName(name userInput: String)
throws {
    // 매개변수로 받은 이름이 본의 와 일치하지 않으면
    if userInput != "본의" {
        // 이름 미스매치 에러를 던진다
        throw MismatchError.nameMismatch
    }
}


// do가 영문법에서 강조라고 생각 하면 좋음
// do study, do work hard
// 에러 잡아?
// do catch 를 이용해 외부로 던져진? 에러를 잡아
// 에러 처리가 가능함

do {
    try guessMyName(name: "본의")
    print("이름이 맞습니다.")
} catch {
    // error를 출력해서 에러 확인 가능
    print("error msg: \(error)")
    print("다음 기회에")
}
