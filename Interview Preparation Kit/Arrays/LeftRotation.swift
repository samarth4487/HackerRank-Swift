func rotLeft(a: [Int], d: Int) -> [Int] {

    let prefixArray = Array(a[..<d])
    let sufixArray = Array(a[d..<a.count])
    return sufixArray + prefixArray
}