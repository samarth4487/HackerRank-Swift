func repeatedString(s: String, n: Int) -> Int {

    let countInSmallString = s.filter{ $0 == "a" }.count
    let (q, r) = n.quotientAndRemainder(dividingBy: s.count)
    let numberOfPerfectRepetetions = q
    var totalOccurences = numberOfPerfectRepetetions * countInSmallString

    let endIndex = s.index(s.startIndex, offsetBy: r)
    let remainingString = String(s[..<endIndex])
    totalOccurences += remainingString.filter{ $0 == "a" }.count

    return totalOccurences
}