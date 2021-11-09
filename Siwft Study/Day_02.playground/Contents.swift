import UIKit

var myArray: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

for item in myArray {
    print(item)
}


//where는 조건을 나타낸다.
for item in myArray where item > 5 {
    print(item)
}
