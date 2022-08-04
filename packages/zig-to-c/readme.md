# c call zig:

- example: https://ziglang.org/learn/overview/#export-functions-variables-and-types-for-c-code-to-depend-on

## quickStart:

> generate c header:

```ruby

# cd this-dir/; do:
docker run --platform linux/x86_64 -v $PWD:/app euantorano/zig:0.6.0 build-lib src/mathtest.zig -femit-h

# or:
task docker:build

# or cd repo-root/; do:
➤ task to:c:docker:build
task: [to:c:docker:build] docker run --platform linux/x86_64 -v $PWD:/app euantorano/zig:0.6.0 build-lib src/mathtest.zig -femit-h
Warning: Unable to write cache file '/root/.cache/zig/stage1/exe/p4rsuZZL85fcyluOF06tMxUXMA_oSkmX2uOSW6AO5sheEcde9uIqY5KNylHLQNZ8.txt': unexpected seek failure
task: [to:c:docker:build] cp *.h src/
task: [to:c:docker:build] rm *.h;


```

> build + run:

```ruby
# cd this-dir/; do:
zig build run

# or cd this-dir/; do:
task run


# or cd repo-root/; do:
➤ task to:c:run
task: [to:c:run] zig build run
c call zig >> add() = 1379


```

> enjoy!
