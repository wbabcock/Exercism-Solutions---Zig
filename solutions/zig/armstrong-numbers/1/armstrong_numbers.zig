fn count_digits(num: u128) u128 {
    if (num == 0) return 1;
    var count: u128 = 0;
    var n = num;
    while (n != 0) {
        n /= 10;
        count += 1;
    }
    return count;
}

fn power(number: u128, exp: u128) u128 {
    var result: u128 = 1;
    var e = exp;
    while (e != 0) : (e -= 1) {
        result *= number;
    }
    return result;
}

pub fn isArmstrongNumber(num: u128) bool {
    const num_digits: u128 = count_digits(num);
    var sum: u128 = 0;
    var n = num;

    while (n != 0) {
        const digit = n % 10;
        sum += power(digit, num_digits);
        n /= 10;
    }

    return sum == num;
}