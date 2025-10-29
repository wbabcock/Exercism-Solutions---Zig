const std = @import("std");
const mem = std.mem;
const bit_set = std.bit_set;

pub fn sum(allocator: mem.Allocator, factors: []const u32, limit: u32) !u64 {
    if (limit == 0) return 0;

    var seen = try bit_set.DynamicBitSet.initEmpty(allocator, @as(usize, limit));
    defer seen.deinit();

    var s: u64 = 0;
    for (factors) |f| {
        if (f == 0) continue;

        var i: u32 = f;
        while (i < limit) : (i += f) {
            const ui = @as(usize, i);
            if (!seen.isSet(ui)) {
                seen.set(ui);
                s += @as(u64, i);
            }
        }
    }
    return s;
}
