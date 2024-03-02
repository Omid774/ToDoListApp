import UIKit

// https://jsonplaceholder.typicode.com/posts
// https://reactnative.dev/movies.json
// https://api.github.com/repos/:owner/:repo
// https://elcomercio.pe/resizer/wNOHq2Ey0866Ur5dfLfA3C5TcP4=/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/D5DQJROBSFH2DAL2TVL26I6MLE.jpg

func findSQRT(number: Int) -> Int {
    
    var start = 0
    var end = number
    var mid = -1
    var ans = -1
    
    while (start <= end) {
        
        mid = (start + end) / 2
        if (mid * mid == number) {
            ans = mid
            break
        }
        if mid * mid < number {
            ans = start
            start = mid + 1
        } else {
            end = mid - 1
        }
        
    }
    return ans
    
}

print(16, " sqrt => ", findSQRT(number: 16))
print(25, " sqrt => ", findSQRT(number: 25))
