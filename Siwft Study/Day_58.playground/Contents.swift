import UIKit

// Set을 통해 배열이 다른 배열을 포함하고 있는지 여부를 체크할 수 있습니ㅏㄷ.
let myPets = ["개냥이", "댕댕이", "꼬북이", "짹쨱이"]
let favoritePets = ["개냥이", "댕댕이"]
let friendsPets = ["뚱뚱이", "해피"]

let myPetsSet = Set(myPets)
let favoritePetsSet = Set(favoritePets)
let friendsPetsSet = Set(friendsPets)


// 스위프트 4.2 이상 버전 .isSubset(of: )
// 스위프트 4.2 아래 버전 .isSubsetOf()
let isFavoritePetsInMyPets = favoritePetsSet.isSubset(of: myPetsSet)
let isFriendsPetsInMyPets = friendsPetsSet.isSubset(of: myPetsSet)

print(isFavoritePetsInMyPets)
print(isFriendsPetsInMyPets)


