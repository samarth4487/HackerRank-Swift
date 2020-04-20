func countingValleys(n: Int, s: String) -> Int {

    var level: Int = 0
    var valleys: Int = 0

    for step in s {
        if step == "D" {
            level -= 1
        } else if step == "U" {
            level += 1
        }

        if level == 0 && step == "U" {
            valleys += 1
        }
    }

    return valleys
}