//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 
 TYPES OF SEARCHING ALGORITHMS
 
 1. Linear Search
 2. Binary Search

 */


/* --------------- Linear Search ----------------

It is not that good.
Time complexity is proportional to number of elements
start comparing the required element with every element one by one

 Best case 0(1) - required element is in first position
 Worst case 0(n) - required element is in last position
 
 
 */


/* ----------------- Binary Search ------------------ */

//Works on sorted arrays
// find middle element and check if required element is smaller or greater than middle element.
// If it is smaller, then reduce the size of array by 2 as in don't check on the other half of the array and vice versa.


/* ----- Recursion based ---------- */

// Best Case - O(1)
// Worst Case - O(logn)

func binarySearch<T: Comparable>(arr : inout [T], low : Int, high : Int, element : T) -> Int? {
    if low > high { return nil }
    let mid = (low + high) / 2
    if element == arr[mid] {
        return mid
    }
    else if element < arr[mid] {
        return binarySearch(arr: &arr, low: low, high: mid - 1, element: element)
    }
    else{
        return binarySearch(arr: &arr, low: mid + 1, high: high, element: element)
    }
}

var list = [1,2,3,4,5,6,7,8,9]
var list2 = ["kumar","kohli","yogesh"]
binarySearch(arr: &list2, low: 0, high: 2, element: "kohli")

/* --------------- Iteration based ------------------- */

// Best Case - O(1)
// Worst Case - O(logn)

func binarySearchIterative<T: Comparable>(arr : inout [T], element : T) -> Int? {
    var start = 0
    var end = arr.count - 1
    while start <= end {
        let mid = (start + end) / 2
        if arr[mid] == element {
            return mid
        }
        else if arr[mid] > element {
            end = mid - 1
        }
        else{
            start = mid + 1
        }
    }
   return -1
}

binarySearchIterative(arr: &list2, element: "kohli")



