import UIKit

enum SectionType: String {
    case favorite = "즐겨찾기"
    case popular = "인기"
    case recommend = "추천"
}

struct Feed {
    var title: String
    var content: String
}

// 자기 자신의 객체를 만들 때
// 각 타입을 지정해 주는 팩토리 메소드를 만들면 개체 생성시에 간평

struct MainSection {
    let feeds: [Feed]
    let type: SectionType
    
    // 타입을 즐겨찾기로 정하고 자기 자신의 객체를 만든다.
    
    static func favorites(feed: [Feed]) -> MainSection {
        return MainSection(feeds: feed, type: .favorite)
    }
    
    static func populars(feed: [Feed]) -> MainSection {
        return MainSection(feeds: feed, type: .popular)
    }
    
    static func recommended(feed: [Feed]) -> MainSection {
        return MainSection(feeds: feed, type: .recommend)
    }
}

let test = MainSection(feeds: [Feed(title: "본의", content: "테스트")], type: .favorite)
print(test)
print(test.feeds)
