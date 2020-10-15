# Rust - Swift Package interop test

This repository attempts to build a Swift package ontop of a Rust library compiled with C FFI using an `xcframework`.

## Building

### Rust

1. `cd rust-c-api`
2. `cargo build --release`
3. `cbindgen --config cbindgen.toml --crate test-c-api --output headers/test.h`(Optional, I've included the output)
4. `cd ..`
5. `xcodebuild -create-xcframework -library rust-c-api/target/release/libtest_c_api.dylib -headers rust-c-api/headers -output swift/Test.xcframework`

### Swift

1. `cd swift`
2. `swift build`
3. It should build but it does not :(
