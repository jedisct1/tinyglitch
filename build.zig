const std = @import("std");
const Builder = std.build.Builder;

pub fn build(b: *Builder) !void {
    const target = try std.zig.CrossTarget.parse(.{ .arch_os_abi = "wasm32-wasi" });

    const mode = b.standardReleaseOptions();

    const obj = b.addObject("avglitch", "src/main.zig");
    obj.setTarget(target);
    obj.setBuildMode(mode);

    b.default_step.dependOn(&obj.step);
}
