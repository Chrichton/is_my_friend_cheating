# IsMyFriendCheating

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `is_my_friend_cheating` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:is_my_friend_cheating, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/is_my_friend_cheating](https://hexdocs.pm/is_my_friend_cheating).

---

##Abschätzung:

untere Schranke

n = 10

a \* b = sum - a - b

a = 6

6 \* b = 55 - 6 - b b >= 1 >= 10

6 _ b = 55 - 6 - 1
6 _ b = 55 - 6 - 10

b = 48 / 6 = 8
b = 39 / 6 = 6,5 = 6 // untere Schranke => abrunden

b von 6 bis 8 testen

für festes a:

b von 1..n

b = floor((sum - a - b) / a)

schlechterster Fall: b = n

=> b = floor((sum - a - n) / a)

Obere Schranke n = 1
