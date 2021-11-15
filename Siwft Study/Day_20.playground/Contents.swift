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
