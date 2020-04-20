func alternatingCharacters(s: String) -> Int {

    var numberOfDeletions: Int = 0

    for i in 1..<s.count {
        let previousIndex = s.index(s.startIndex, offsetBy: i - 1)
        let currentIndex = s.index(s.startIndex, offsetBy: i)
        if s[previousIndex] == s[currentIndex] {
            numberOfDeletions += 1
        }
    }

    return numberOfDeletions
}