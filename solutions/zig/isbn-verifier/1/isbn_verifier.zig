const ascii = @import("std").ascii;

pub fn isValidIsbn10(s: []const u8) bool {
    var i: u8 = 10;
    var sum: usize = 0;
    var size: u8 = 0;
       
    for (s) |c| {
        if (i == 0) return false;
        if (ascii.isDigit(c)) {
            sum += (c - '0') * i;
            size += 1;
            i -= 1;
        } else if (c == 'X' and i == 1) {
            sum += 10 * i;
            size += 1;
            i -= 1;
        } else if (ascii.isAlphabetic(c)) return false;
    }
    return sum % 11 == 0 and size == 10;
}