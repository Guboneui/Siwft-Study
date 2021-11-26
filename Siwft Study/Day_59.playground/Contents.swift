import UIKit

// stride를 통해 범위안에 반복 처리가 가능합니다.
// from 시작, to 끝, by 만큼

for countdown in stride(from: 4, through: 0, by: -1) {
    print(countdown)
}

// 배열 익스텐션
extension Array {
    // 배열을 쪼개는 메소드
    func chunks(_ chunkSize: Int) -> [[Element]] {
        // stride를 통해 범위는 0에서 배열의 총 갯수
        // 나누는 크기 만큼
        return stride(from: 0, through: self.count, by: chunkSize)
            .map{
                // 나누는 크기 만큼의 배열 생성
                Array(self[$0..<Swift.min($0 + chunkSize, self.count)])
        }
    }
}


let numbers = Array(1...10)
let result = numbers.chunks(3)

print(numbers)
print(result)
