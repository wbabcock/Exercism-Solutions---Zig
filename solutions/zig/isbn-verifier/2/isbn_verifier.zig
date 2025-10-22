pub fn isValidIsbn10(s: []const u8) bool {
    var n: u8 = 10;
    var sum: usize = 0;
       
    for (s) |c| {
        if (c == '-') continue;
        if (n == 0 or (n != 1 and c == 'X')) return false;
        sum += if (c == 'X') 10 else n * (c - '0');

        n -= 1;
    }
    return sum % 11 == 0 and n == 0;
}