import UIKit

var myArray: [Int] = []

for i in 0...5 {
    print(i)
}

for i in 0..<5 where i % 2 == 0{
    print(i)
}



for _ in 0..<25 {
    let randomNumber = Int.random(in: 0...100)
    myArray.append(randomNumber)
}

print(myArray)
