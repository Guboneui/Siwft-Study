import UIKit
import Foundation

var myArray = [1, 4, 3, 2, 5, 9, 7, 6, 8, 10]
// sorted를 통해 오름 차순으로 정렬된 새 콜렉션을 반환함
var filterdArray = myArray.sorted()
print("myArray: \(myArray)")
print("filteredArray: \(filterdArray)")

// 콜렉션 내의 데이터 들을 번갈아 가면서 돌아
// 반환값이 true가 나올때 해당 하는 녀석을 넣게된다. 그래서 내림차순으로 정렬이 된다.

var descendingArray = myArray.sorted(by: {(someValue: Int, otherValue: Int) -> Bool in
    //print("someValue: \(someValue)")
    //print("otherValue: \(otherValue)")
    return someValue > otherValue
})
print("descendingArray: \(descendingArray)")

// 클로저 부분 축약 버전
var myDescendingArray = myArray.sorted(by: {
    return $0 > $1
})
print("myDescendingArray: \(myDescendingArray)")

// >, < 를 통해 보다 간편하게 정렬이 가능하다

// 내림차순
var shortedDescendingArray1 = myArray.sorted(by: >)
print("shortedDescendingArray1: \(shortedDescendingArray1)")

// 오름차순
var shortedDescendingArray2 = myArray.sorted(by: <)
print("shortedDescendingArray2: \(shortedDescendingArray2)")

// sort() 메소드를 통해 배열 자체를 정렬한다.
myArray.sort()
print(myArray)

myArray.sort(by: >)
print(myArray)
myArray.sort(by: {
    return $0 < $1
})
print(myArray)

myArray.sorted(by: {(someValue: Int, otherValue: Int) -> Bool in
    return someValue > otherValue
})
