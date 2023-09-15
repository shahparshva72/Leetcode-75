// https://leetcode.com/problems/smallest-number-in-infinite-set/description/?envType=study-plan-v2&envId=leetcode-75

/*
You have a set which contains all positive integers [1, 2, 3, 4, 5, ...].

Implement the SmallestInfiniteSet class:

SmallestInfiniteSet() Initializes the SmallestInfiniteSet object to contain all positive integers.
int popSmallest() Removes and returns the smallest integer contained in the infinite set.
void addBack(int num) Adds a positive integer num back into the infinite set, if it is not already in the infinite set.
*/

class SmallestInfiniteSet {

    var intSet = Set<Int>()

    init() {
        intSet = Set(Array(1...1000))
    }
    
    func popSmallest() -> Int {
        let smallestInt = intSet.min()!
        intSet.remove(smallestInt)
        return smallestInt
    }
    
    func addBack(_ num: Int) {
        intSet.update(with: num)
    }
}