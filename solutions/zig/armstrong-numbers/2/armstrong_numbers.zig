const pow = @import("std").math.pow;

pub fn isArmstrongNumber(num: u128) bool {
    if (num == 0) return true;

    var n = num;
    var sum: u128 = 0;
    var digits: u8 = 0;

    // Get the number of digits
    while (n != 0) : (n /= 10) digits += 1;

    // Reset the n variable
    n = num;

    // Add the exponent of the modulus to the sum.
    while (n != 0) : (n /= 10) {
        sum += pow(u128, n % 10, digits);
    }

    return sum == num;
}