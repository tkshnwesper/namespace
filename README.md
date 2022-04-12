# namespace

Include without polluting the global namespace.

```crystal
namespace A::B do
  C.foo   # => A::B::C.foo
end

C.foo # ❌ not accessible outside block!
```

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     namespace:
       github: tkshnwesper/namespace
   ```

2. Run `shards install`

## Usage

```crystal
require "namespace"

module A
  class B
    def foo
    end
  end
end

namespace A do
  B.new.foo
end
```

## Contributing

1. Fork it (<https://github.com/tkshnwesper/namespace/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [tkshnwesper](https://github.com/tkshnwesper) - creator and maintainer
