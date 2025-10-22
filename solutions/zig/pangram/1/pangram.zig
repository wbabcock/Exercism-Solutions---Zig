const std = @import("std");

pub fn isPangram(str: []const u8) bool {
    var seen: [26]bool = [_]bool{false} ** 26;
    for (str) |c| {
        const lower = std.ascii.toLower(c);
        if (lower >= 'a' and lower <= 'z') {
            seen[lower - 'a'] = true;
        }
    }

    for (seen) |c| {
        if (!c) {
            return false;
        }
    }

    return true;
}
