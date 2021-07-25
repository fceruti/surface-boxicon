# Boxicon

Boxicon is [surface](https://github.com/surface-ui/surface) icon component library that wraps around the amazing [boxicons](https://boxicons.com) icon library.

## Usage

```elixir
defmodule MyComponent do
  use Surface.Component

  alias Boxicon.SolidVideoPlus

  @impl true
  def render(assigns) do
    ~F"""
      <SolidVideoPlus  size="64" class="icon green"/>
    """
  end

end
```

## Installation

Add boxicons to your dependencies in your `mix.exs` file

```elixir
def deps do
  [
    {:boxicon, "~> 0.1.0"}
  ]
end
```
