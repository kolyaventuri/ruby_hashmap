# HashTable

This is a simple (retrieval only) implementation of a HashMap in Ruby.

## Usage

Here is a simple usage example

```ruby
table = HashTable.new

table.put('some_key', 'some_data')
table.put('other_key', 'other_data')

table.get('some_key') # => 'some_data'
table.get('other_key') # => 'other_data'
table.get('no_key') # => nil
```

Hash collisions are fully handled.

Duplicate keys cannot be added

```ruby
table.put('key', 'data')
table.put('key', 'other_data') # => false

table.get('key') # => 'data'
```

## Hash Calculation Method
The hash is calculated by a simplistic calculate methodology

*(pseudocode)*
```
HASH = (ascii values of key string) % (total allowable array values)
```

## Testing
Tests can be run with `rspec`

## Todo
* Implement hash key/value deletion
