import UIKit

struct MyArray<T> {
    
    //제네릭을 담은 빈 배열
    var elements: [T] = []
    
    //생성자
    init(_ elements: [T]){
        self.elements = elements
    }
}




struct Friend {
    var name: String
}


struct Coder {
    var name: String
}

var mySomeArray = MyArray([1, 2, 3])
print("mySomeArray = \(mySomeArray)")


var myStringArray = MyArray(["a", "b", "c"])
print("myStringArray = \(myStringArray)")

let a = Friend(name: "가님")
let b = Friend(name: "나님")
let c = Friend(name: "다님")

var myFriendsArray = MyArray([a, b, c])
//var myFriendsArray = MyArray([a.name, b.name, c.name])
print(myFriendsArray)
