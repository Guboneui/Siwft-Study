import UIKit

// 애완동물 행동 이넘
enum PetAction {
    case sleep // 잠자기
    case tailWagging // 꼬리 흔들기
    case move(distance: Float) // enum에 값을 넣을 수도 있다
}

func doAction(_ action: PetAction) {
    switch action {
    case .sleep:
        print("강아지가 자고 있습니다.")
    case .tailWagging:
        print("강아지가 꼬리를 흔들고있습니다.")
    case .move(let distance):
        print("강아지가 \(distance)만큼 움직였습니다")
        
    // 동일하게 아래처럼 사용도 가능
    // case let .move(distance):
    }
}

doAction(.sleep)
doAction(.tailWagging)
doAction(.move(distance: 10.11))
