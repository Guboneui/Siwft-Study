import UIKit


// 자료형이 Error인 enum
enum MismatchError: Error {
    case nameMismatch
    case numberMismatch
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

try? guessMyName(name: "구본의")       //try를 옵셔널 처리해서 에러를 출력하지 않을 수도 있움.


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




/// 번호를 맞춘다
/// - Parameter input: 사용자 숫자 입력
/// - Returns: bool 맞췄는지 여부
func guessMyNumber(name input: Int) throws -> Bool {
    print("guessMyNumber Called")
    
    if input != 10 {
        print("틀렸다")
        throw MismatchError.numberMismatch
    }
    
    print("맞췄다")
    return true
}


do {
    try guessMyNumber(name: 1)
} catch {
    print("잡은 에러: \(error.localizedDescription)")
}
