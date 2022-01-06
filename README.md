# test-arc-ruby0

Toying around with Architect + Ruby.

See commented code in each http function's index.rb

The project is currently deployed

try:
* https://ba6x7jagk4.execute-api.us-west-2.amazonaws.com/hello
* https://ba6x7jagk4.execute-api.us-west-2.amazonaws.com/hello?name=tbeseda
* https://ba6x7jagk4.execute-api.us-west-2.amazonaws.com/arc-reflect
* https://ba6x7jagk4.execute-api.us-west-2.amazonaws.com/session-test (broken, see source code for errors)

I think Sandbox executes each function twice. Once with 0 args provided to `handler` and then another with args. To work around this, I did some weird combination of splat and named parameters 😬 It's annotated in the source
