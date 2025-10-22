const ascii = @import("std").ascii;

pub fn isIsogram(str: []const u8) bool {
    var i: u8 = 1;
    for (str) |c| {
        if (c != ' ' and c != '-') {
            for (str[i..]) |ch| {
                if (ascii.toLower(c) == ascii.toLower(ch)) return false;
            }
        }
        i += 1;
    }
    return true;
}
