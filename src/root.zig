const std = @import("std");
const c = @import("c.zig");
const testing = std.testing;

pub const openFileDialog = c.openFileDialog;
pub const openFileDialogZ = c.openFileDialogZ;

test "Open File Dialog" {
    const path: ?[]const u8 = try openFileDialog(testing.allocator, null, null);
    _ = path;
    try testing.expectEqual(true);
}
