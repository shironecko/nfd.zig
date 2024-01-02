# NFD.ZIG
**nfd.zig** is a native file dialogue for zig. It's aim is to make Native File Dialogue, easy to use in zig programs

## Supported Operations
|Operation     | Status |
|--------------|--------|
|File Open     | - [x]  |
|Save Dialogue | - [ ]  |
|Open Folder   | - [ ]  |

## Usage
It targets zig master version. To use this, add this package in to your build.zon

```lua
.{
    .dependencies = {
            .nfd = .{
                .url = "https://github.com/ArtemisX64/nfd.zig/archive/refs/tags/0.0.0.tar.gz",
                .hash = "12203d430d0369b310dded60e402f5ec0a2310a29376ee57c5a250c612ea20ef8a6c",
            },
        },
}
```

In build.zig, add
```rs
    const nfd = @import("nfd");

    nfd.install(exe);
```

## Quick Start
### Creating Open Dialog
```rs
const nfd = @import("nfd");
nfd.openDialog(std.testing.allocator, null, null); //Requires an allocator to convert sentinal terminated slice to zig slice. Use openFileDialogZ() otherwise
```
### Creating Save File Dialog
```rs
const nfd = @import("nfd");
nfd.saveDialog(std.testing.allocator, null, null); //Requires an allocator to convert sentinal terminated slice to zig slice. Use saveDialogZ() otherwise
```
### Creating Pick Folder Dialog
```rs
const nfd = @import("nfd");
nfd.pickFolder(std.testing.allocator, null, null); //Requires an allocator to convert sentinal terminated slice to zig slice. Use pickFolderZ() otherwise

