import UIKit

struct Friend {
    var lastName: String
    var firstName: String
    
    func getFullName() -> String {
        return lastName + " " + firstName
    }
}


var myFriend = Friend(lastName: "구", firstName: "본의")

print(myFriend)
print(myFriend.getFullName())

// 스트럭트는 생성자를 만들지 않아도 자동으로 해준다.
// var test = Friend(lastName: <#String#>, firstName: <#String#>)


print(myFriend.lastName)
print(myFriend.firstName)
