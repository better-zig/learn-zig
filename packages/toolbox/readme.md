# toolbox:

- 使用 zig 编写的 cli 命令行工具.
- 使用 zigmod 作为包管理工具

> zig 版本:

```ruby

➤ zig version
0.10.0-dev.2617+47c4d4450

```

> 依赖包:

- [zigmod.yml](zigmod.yml)

> 编译:

- 编译结果: [zig-out/bin/toolbox](zig-out/bin/toolbox)
- 编译脚本: [Taskfile.yml](Taskfile.yml)

```yml
task run
```

> 运行 cli 工具:

```ruby

task exec
```

> 运行示例日志:

- 项目根目录的运行脚本: [Taskfile.yml](../../Taskfile.yml)

```ruby
➤ task toolbox:exec

task: [toolbox:run] zig build run
task: [toolbox:exec] ./zig-out/bin/toolbox --help
--help
task: [toolbox:exec] ./zig-out/bin/toolbox -n 2233 -s hello
--number = 2233
--string = hello
```
