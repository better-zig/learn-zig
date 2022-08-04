const print = @import("std").debug.print;

//
pub export fn add(a: i32, b: i32) i32 {
    // todo x: print args
    print("zig log: add({}, {})\n", .{ a, b });
    return a + b;
}
