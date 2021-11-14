import UIKit
import Foundation


class Friend {
    var name: String
    init(_ name: String) {
        self.name = name
    }
    
    func sayHi() {
        print("hello my name is \(self.name)")
    }
}

class BestFriend: Friend {
    override init(_ name: String) {
        super.init("베프" + name)
    }
    
    override func sayHi() {
        super.sayHi()
    }
}

let myFriend = Friend("본의")

myFriend.sayHi()

let myBestFriend = BestFriend("본의")
myBestFriend.sayHi()
