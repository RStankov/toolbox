# ActiveModel attributes

Simple markdown renderer

## Installation

* install 'Redcarpet' gem
* copy `render_markdown.rb` to `lib/render_markdown.rb`
* copy `render_markdown_spec.rb` to `spec/lib/render_markdown_spec`


## Usage

```ruby
RenderMarkdown.call '_text_'
```

## Notice

Overall this is just a wrapper over Redcarpet. The settings the "real" renderer are ment to be changed.
