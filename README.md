# NFD.ZIG
**nfd.zig** is a native file dialogue for zig. It's aim is to make Native File Dialogue, easy to use in zig programs

## Supported Operations
|Operation     | Status |
|--------------|--------|
|File Open     |   [x]  |
|Save Dialogue |   [ ]  |
|Open Folder   |   [ ]  |

## Usage
It targets zig master version. To use this, add this package in to your build.zon

```lua
.{
    .dependencies = {
            .nfd = .{
                .url = "",
                .hash = "",
            },
        },
}
```

In build.zig, add
```rs
    const nfd = @import("nfd.zig");

    nfd.install(exe);
```

## Quick Start
### Creating Open Dialog
```rs
const nfd = @import("nfd");
nfd.openFileDialog(std.testing.allocator, null, null); //Requires an allocator to convert sentinal terminated slice to zig slice. Use openFileDialogZ() otherwise
```


