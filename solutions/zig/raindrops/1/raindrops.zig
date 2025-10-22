const std = @import("std");

pub fn convert(buffer: []u8, n: u32) []const u8 {
    var bstream = std.io.fixedBufferStream(buffer);
    if (n % 3 == 0) bstream.writer().writeAll("Pling") catch unreachable;
    if (n % 5 == 0) bstream.writer().writeAll("Plang") catch unreachable;
    if (n % 7 == 0) bstream.writer().writeAll("Plong") catch unreachable;
    if (bstream.pos == 0) bstream.writer().print("{d}", .{n}) catch unreachable;
    return bstream.getWritten();
}
