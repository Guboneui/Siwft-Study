import UIKit

// 고차함수
// 매개변수로 함수 혹은 클로저를 받고 받았던 녀석을 반환하는 함수
// 콜렉션에 들어가는 배열, 딕셔너리, set에
// Sorted, Map, Filter, Reduce 등이 빌트인 되어있다.

func getMyWords(_ firstWord: String, _ lastWord: String) -> String {
    return firstWord + " " + lastWord
}

func getMyWordsTwice(_ firstWord: String, _ lastWord: String) -> String {
    return firstWord + " " + lastWord + " / 한번 더 말할께요! /" + firstWord + " " + lastWord
}

// 함수 자체를 매개변수로 넣고

func saySomething(getWords: (_ first: String, _ last: String) -> String, firstInput: String, lastInput: String) -> String {
    // 넣은 함수를 반환
    return getWords(firstInput, lastInput)
}

let resultOne = saySomething(getWords: getMyWords, firstInput: "안녕하세요", lastInput: "구본의 입니다.")
print(resultOne)


let resultTwo = saySomething(getWords: getMyWordsTwice, firstInput: "안녕하세요", lastInput: "본의 입니다.")
print(resultTwo)
