const std = @import("std");
const Builder = std.build.Builder;

pub fn build(b: *Builder) !void {
    const target = try std.zig.CrossTarget.parse(.{ .arch_os_abi = "wasm32-wasi" });

    const mode = b.standardReleaseOptions();

    const exe = b.addExecutable("avglitch", "src/main.zig");
    exe.setTarget(target);
    exe.setBuildMode(mode);
    exe.addObjectFile("libffmpeg-wasm.a");
    exe.install();

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());
    if (b.args) |args| {
        run_cmd.addArgs(args);
    }
}
