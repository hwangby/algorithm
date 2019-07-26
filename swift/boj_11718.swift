import Swift
import Foundation

while true {
    let a = readLine() ?? "" // ?? : nil인지 아닌지 감별 A ?? B 일경우 A가 nil일 경우 B값을 반환 nil이 아니면 A값 반환
        if a.isEmpty { break }
    print(a)
}
