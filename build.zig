const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.resolveTargetQuery(.{ .cpu_arch = .wasm32, .os_tag = .wasi });

    const optimize = b.standardOptimizeOption(.{});

    const exe = b.addExecutable(.{
        .name = "avglitch",
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/main.zig"),
            .target = target,
            .optimize = optimize,
            .imports = &.{.{ .name = "zigly", .module = b.dependency("zigly", .{}).module("zigly") }},
        }),
    });
    exe.root_module.addObjectFile(b.path("ffmpeg-wasi.a"));
    b.installArtifact(exe);

    const run_cmd = b.addRunArtifact(exe);
    run_cmd.step.dependOn(b.getInstallStep());
    run_cmd.addPassthruArgs();
}
