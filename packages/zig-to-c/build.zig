const Builder = @import("std").build.Builder;

// todo x: 编译方式1: 动态链接, 下面有静态链接编译方式, 都很简单
pub fn build(b: *Builder) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.standardReleaseOptions();

    // todo x: fix src dir:
    const lib = b.addSharedLibrary("mathtest", "src/mathtest.zig", b.version(1, 0, 0));

    // todo x: fix null
    const exe = b.addExecutable("main", null);
    exe.setTarget(target);
    exe.setBuildMode(mode);

    // todo x: fix src dir:
    exe.addCSourceFile("src/main.c", &[_][]const u8{"-std=c99"});
    exe.linkLibrary(lib);
    exe.linkSystemLibrary("c");

    b.default_step.dependOn(&exe.step);

    const run_cmd = exe.run();

    // todo x: build cmd
    const test_step = b.step("run", "Run the program");
    test_step.dependOn(&run_cmd.step);
}

// todo x: 编译方式2: 静态链接(更简单),
// todo x: 使用方式: rename buildStatic -> build()
//
pub fn buildStatic(b: *Builder) void {
    // build static library
    const target = b.standardTargetOptions(.{});
    const mode = b.standardReleaseOptions();

    const lib = b.addStaticLibrary("mathtest", "src/mathtest.zig");
    lib.setBuildMode(mode);
    lib.install();

    //
    // way2: not work.
    //
    // const lib = b.addStaticLibrary("mathtest", "src/mathtest.zig");
    // lib.bundle_compiler_rt = true;
    // lib.use_stage1 = false;
    // lib.emit_h = true;
    // lib.emit_bin = .{ .emit_to = "libmathtest.a" }; // todo x: required
    // lib.setBuildMode(mode);
    // lib.install();

    // todo x: fix null
    const exe = b.addExecutable("main", null);
    exe.setTarget(target);
    exe.setBuildMode(mode);

    // todo x: fix src dir:
    exe.addCSourceFile("src/main.c", &[_][]const u8{"-std=c99"});
    exe.linkLibrary(lib);
    exe.linkSystemLibrary("c");

    b.default_step.dependOn(&exe.step);

    const run_cmd = exe.run();

    // todo x: build cmd
    const test_step = b.step("run", "Run the program");
    test_step.dependOn(&run_cmd.step);
}
