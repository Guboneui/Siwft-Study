import UIKit

//enum = 경우를 나눈다.

enum School {
    case elementary
    case middle
    case high
}


let yourSchool = School.high
print(yourSchool)


enum Grade: Int {
    case first = 1
    case second = 2
    case third = 3
}

let yourGrade = Grade.first
print(yourGrade)
print(yourGrade.rawValue) //해당하는 값을 가져오고 싶을 때 rawValue 사용


enum SchoolDetail {
    case elementary(name: String)
    case middle(name: String)
    case high(name: String)
    
    func getName() -> String {
        switch self {
        case .elementary(let name):
            return name
            
        case let .middle(name):
            return name
            
        case .high(let name):
            return name
        }
    }
}

let mySchoolName = SchoolDetail.high(name: "스위프트 중학교")
print(mySchoolName)
print(mySchoolName.getName())
