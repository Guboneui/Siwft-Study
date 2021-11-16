import UIKit

struct YoutuberStruct {
    var name: String
    var subscribersCount: Int
}

var dev = YoutuberStruct(name: "본의", subscribersCount: 20)
var myInfo = dev
print(myInfo)
myInfo.name = "본의 이름 바뀜"
print(myInfo)



class YouTube {
    var name: String
    var count: Int
    
    //init으로 매개변수를 가진 생성자 메소드를 만들어야
    //매개변수를 넣어서 그 값을 가진 객체(object)를 만들 수 있다.
    
    init(name: String, count: Int) {
        self.name = name
        self.count = count
    }
}


var varClass = YouTube(name: "본의 클래스", count: 20)
var varClassClone = varClass
print("값 넣기 전: \(varClassClone.name)")
varClassClone.name = "바뀐 클래스"
print("값 넣은 후: \(varClassClone.name)")
print("클래스 자체: \(varClass.name)")



//struct는 다른 종이에 복사 -> 영향을 끼치지 않음
//class는 연결 -> 영향 끼침
//따라서 struct = 값 타입 / class는 참조 타입
