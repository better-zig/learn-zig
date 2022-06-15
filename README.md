# learn-zig

- learning zig language

## Features:

- [basic](./packages/basic/): zig basic example
- [toolbox](./packages/toolbox/) : zig toolbox
- [zig-utils](./packages/zig-utils/) : zig utils

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
