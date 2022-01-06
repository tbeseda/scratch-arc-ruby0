# test-arc-ruby0

Toying around with Architect + Ruby as a follow up to https://github.com/architect/architect/issues/1291

See commented code in each http function's index.rb

The project is currently deployed

try:
* https://ba6x7jagk4.execute-api.us-west-2.amazonaws.com/hello
* https://ba6x7jagk4.execute-api.us-west-2.amazonaws.com/hello?name=tbeseda
* https://ba6x7jagk4.execute-api.us-west-2.amazonaws.com/arc-reflect
* https://ba6x7jagk4.execute-api.us-west-2.amazonaws.com/session-test (broken, see source code for errors)

To get Bundler working, I just needed to configure Bundler to behave. For example, for the arc-reflect function:

```
cd src/http/get-arc_reflect
bundle init
bundle config set --local path 'vendor/bundle'
bundle lock --add-platform x86_64-linux
bundle add architect-functions
npx arc env staging BUNDLE_FROZEN 1
npx arc env production BUNDLE_FROZEN 1
```

Also, I think Sandbox executes each function twice. Once with 0 args provided to `handler` and then another with args. To work around this, I did some weird combination of splat and named parameters 😬 It's annotated in the source
