# Matcher for matching json responses

In a lot rspec controller tests I need to verify json response. Most of the time people use:

```ruby
expect(response.body.to_json).to eq {attribute1: 'value1', attribute2: 'value2'}.to_json
```

Which is long, and most importantly if attribute positions are changed the test will fail. This fixed by ```render_json``` matcher:

```ruby
expect(controller).to render_json attribute1: 'value1', attribute2: 'value2'
```
