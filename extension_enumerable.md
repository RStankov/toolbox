# Extensions to Enumerable

Just some useful monkey patches to Enumerable

## Installation

* copy `extension_hash.rb` to `lib/extensions/enumerable.rb`
* require `lib/extensions/enumerable.rb` in you codebase


## Examples

```ruby

# Enumerable#map_hash

[-3, 3].map_hash { |n| [n.abs, n] }       #=> {3 => 3}

```


