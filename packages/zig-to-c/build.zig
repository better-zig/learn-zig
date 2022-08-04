const Builder = @import("std").build.Builder;

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
