import UIKit
var ans = [String]()

func generateParenthesis(_ n: Int) -> [String] {
    process("", n, n, ans)
    return ans
}

func process(_ prefix: String, _ left: Int, _ right: Int, _ result: [String]) {
    var r = result
    if left == 0 && right == 0{
        r.append(prefix)
        ans.append(prefix)
        return
    }
    if left > 0{
        process(prefix + "(", left - 1, right, r)
    }
    if (left < right) {
        process(prefix + ")", left, right - 1, r)
    }
}

print(generateParenthesis(8))
