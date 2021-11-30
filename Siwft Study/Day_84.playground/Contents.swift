import UIKit

var myPets = ["a", "b", "c", "d"]
print("mypets: \(myPets)")

// shuffle을 통해 콜렉션 자신의 요소값들을 섞을 수 있습니다.
myPets.shuffle()

print("shuffle mypets: \(myPets)")


// shuffled는 섞어진 콜렉션을 반환합니다
let shuffledPets = myPets.shuffled()

print("shuffledPets: \(shuffledPets)")

