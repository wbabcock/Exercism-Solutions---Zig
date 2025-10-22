/// Writes a reversed copy of `s` to `buffer`.
pub fn reverse(buffer: []u8, s: []const u8) []u8 {
    const n = @min(buffer.len, s.len);
    for (0..n) |i| buffer[i] = s[s.len - i - 1];
    return buffer[0..n];
}
