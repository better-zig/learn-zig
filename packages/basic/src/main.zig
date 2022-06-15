const std = @import("std");

pub fn main() anyerror!void {
    std.log.info("All your codebase are belong to us.", .{});
    std.debug.print("Hello, {s}!\n", .{"World"});

    const stdout = std.io.getStdOut().writer();
    try stdout.print("Hello, {s}!\n", .{"world"});
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);

    std.log.debug("All your codebase are belong to us.", .{});
    // std.log.err("All your codebase are belong to us.", .{});
    std.log.info("All your codebase are belong to us.", .{});
}

test "test2" {
    try std.testing.expectEqual(10, 3 + 7);
    try std.testing.expectEqualStrings("Hello, World!", "Hello, World!");
}
