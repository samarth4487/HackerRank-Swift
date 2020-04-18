func compareTriplets(a: [Int], b: [Int]) -> [Int] {

    var aliceScore: Int = 0
    var bobScore: Int = 0

    for i in 0..<a.count {
        if a[i] > b[i] {
            aliceScore += 1
        } else if a[i] < b[i] {
            bobScore += 1
        }
    }

    return [aliceScore, bobScore]
}
