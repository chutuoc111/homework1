import UIKit

// bai tap 1: Viết chương trình cho phép nhập vào một số nguyên dương n, tính tổng tất cả số chẵn trong khoảng từ 0 - n.

func sum(n: Int) -> Int {
    var sum = 0
    for i in 0 ... n {
        if i % 2 == 0 {
            sum = sum + i
        }
    }
    return sum
}
print("Tổng các số chẵn :")
print("sum = \(sum(n: 10))")



// bai tap 2: Viết chương trình để nhập nhập một số nguyên, tìm kết quả phép nhân của số đó với các số từ 1 - 20 , sau đó in kết quả ra màn hình.
func multiplication(n: Int) {
    var a = 1
    for i in 1...20 {
        a = n * i
        print(a)
    }
}

multiplication(n: 2)

// bai tap 3 : Viết chương trình cho phép nhập vào một số nguyên n ( n < 1000 ), In ra tất cả số nguyên tố trong khoảng từ 0 - n.
func soNguyenTo(n: Int) {
    print("các số nguyên tố từ 0 đến \(n) :")
    if n < 1000{
        for k in 1 ... n {
            var dem = 0
            for i in 1 ... k {
                if k % i == 0 {
                    dem = dem + 1
                }
            }
            if dem < 3 {
                print("\(k) là số nguyên tố")
            }else{
                //            print("\(k) không là số nguyên tố")
            }
        }
    } else {
        print("\(n) không hơp lệ")
    }
}

soNguyenTo(n: 1)

// bai tap 4 : Viết chương trình cho phép nhập vào số nguyên n( n <= 20 ), in ra số Fibonacci ứng với nó.

func fibonacci1(n: UInt) -> UInt {
    if (n == 0) {
        return n
    }
    var last: UInt = 0, next: UInt = 1
    print("dãy số fibonacci của \(n)")
    for i in 1..<n {
        (last, next) = (next, last + next)
        print(last)
        if next > n {
            break
        }
    }
    return next
}
fibonacci1(n: 50)

func fibonacci(n: Int) {
    if n <= 0 || n > 20 {
        print("\(n) là số không hợp lệ")
    } else {
        var a = [Int]()
        switch n {
        case 1:
            a = [1]
        case 2:
            a = [1,1]
        default:
            var n1 = 1
            var n2 = 1
            a += [n1, n2]
            for i in 3...n {
                let n3 = n1 + n2
                if n3 > n {
                    break
                }
                a += [n3]
                n1 = n2
                n2 = n3
            }
        }
        print(a)
    }
    
}

fibonacci(n: 21)


