// https://leetcode.com/problems/greatest-common-divisor-of-strings/?envType=study-plan-v2&envId=leetcode-75

/*
For two strings s and t, we say "t divides s" if and only if s = t + ... + t (i.e., t is concatenated with itself one or more times).

Given two strings str1 and str2, return the largest string x such that x divides both str1 and str2.
*/

func gcdOfStrings(_ str1: String, _ str2: String) -> String {
    if str1 + str2 != str2 + str1 {
        return ""
    }

    let index = str1.index(str1.startIndex, offsetBy: gcd(str1.count, str2.count))
    return String(str1[..<index])
}

func gcd(_ n1: Int, _ n2: Int) -> Int {
    let r = n1 % n2

    if r != 0 {
        return gcd(n2, r)
    } else {
        return n2
    }
}

print(gcdOfStrings("ABCABC", "ABC"))