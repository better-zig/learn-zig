# learn-zig

- learning zig language

## Features:

- [basic](./packages/basic/): zig basic example
- [toolbox](./packages/toolbox/) : zig toolbox
- [zig-utils](./packages/zig-utils/) : zig utils

> 与 C 语言互操作性:

- ✅ [c](./packages/c/src/main.c): 使用 zig 作为 C 编译器, 直接编译 C 代码
  - `cd packages/c; task run`
  - or `task c:run`
- ✅ [zig-use-c](./packages/zig-use-c/src/main.zig): zig 调用 C 代码
- ✅ [zig-to-c](./packages/zig-to-c/readme.md): zig 编译成 C Lib(C ABI), 基于 `FFI`, 被其他语言(如 dart)调用

## QuickStart:

> requirements:

- zig: `0.10.0-dev.2617+47c4d4450`
- zigmod: `zigmod r80 macos aarch64 none`

> install:

```ruby

# install zig:
task install:zig:dev

-> % zig version
0.10.0-dev.2617+47c4d4450

# macos + m1 cpu:
task install:zigmod:m1
# or macos + intel cpu
task install:zigmod:intel


```

> run:

```ruby
task basic:run
```

> test:

```ruby
task basic:test
```

## Structure:

```ruby


-> % tree ./packages/ -L 2
./packages/
├── basic
│   ├── Taskfile.yml
│   ├── build.zig
│   ├── src
│   ├── zig-cache
│   ├── zig-out
│   └── zigmod.yml
├── toolbox
│   ├── Taskfile.yml
│   ├── build.zig
│   ├── src
│   └── zigmod.yml
└── zig-utils
    ├── Taskfile.yml
    ├── build.zig
    ├── src
    ├── zig-cache
    └── zigmod.yml



```
