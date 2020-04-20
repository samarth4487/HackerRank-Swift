func minimumBribes(q: [Int]) -> Void {

    var bribes: Int = 0
    var mutableArray = q

    for (index, value) in q.reversed().enumerated() {
        let dummyIndex = q.count - index
        if index < q.count - 1 - 1 {
            if dummyIndex == mutableArray[dummyIndex - 1] {
                continue
            } else if dummyIndex == mutableArray[dummyIndex - 2] {
                mutableArray.swapAt(dummyIndex - 2, dummyIndex - 1)
                bribes += 1
            } else if dummyIndex == mutableArray[dummyIndex - 3] {
                mutableArray.swapAt(dummyIndex - 3, dummyIndex - 2)
                mutableArray.swapAt(dummyIndex - 2, dummyIndex - 1)
                bribes += 2
            } else {
                print("Too chaotic")
                return
            }
        } else if index < q.count - 1 {
            if dummyIndex == mutableArray[dummyIndex - 1] {
                continue
            } else if dummyIndex == mutableArray[dummyIndex - 2] {
                mutableArray.swapAt(dummyIndex - 2, dummyIndex - 1)
                bribes += 1
            } else {
                print("Too chaotic")
                return
            }
        }
    }

    print("\(bribes)")
}