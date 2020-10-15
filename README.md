# Rust - Swift Package interop test

This repository attempts to build a Swift package ontop of a Rust library compiled with C FFI using an `xcframework`.

## Building

### Rust

1. `cd rust-c-api`
2. `cargo build --release`
3. `cbindgen --config cbindgen.toml --crate test-c-api --output headers/test.h`(Optional, requires cbindgen to be installed)
4. `cd ..`
5. `xcodebuild -create-xcframework -library rust-c-api/target/release/libtest_c_api.dylib -headers rust-c-api/headers -output swift/Test.xcframework`

### Swift

1. `cd swift`
2. `swift build`
3. It should build but it does not :(

Instead of building the following happens

```
error: no such module 'CTest'
import CTest
       ^
```


## Questions

### Does the headers exists in the framework?

```bash
$ ls swift/Test.xcframework/macos-x86_64/Headers
test.h
```

### Does the library contain the relevant symbol

```bash
$ nm swift/Test.xcframework/macos-x86_64/libtest_c_api.dylib | grep add
00000000000039b0 T _add
```
