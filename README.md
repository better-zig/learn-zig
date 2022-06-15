# learn-zig

## QuickStart:

> install:

```ruby

# install zig:
task install:zig

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

## Features:

- [basic](./packages/basic/): zig basic example
- [toolbox](./packages/toolbox/) : zig toolbox
- [zig-utils](./packages/zig-utils/) : zig utils

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
