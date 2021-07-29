# Boxicon

Boxicon is [surface](https://github.com/surface-ui/surface) component library that wraps the amazing [boxicons](https://boxicons.com) library.

## Usage

```elixir
defmodule MyComponent do
  use Surface.Component

  @impl true
  def render(assigns) do
    ~F"""
      <Boxicon
        type="regular"
        name="calendar"  
        size="64" 
        class="icon green"
      />
    """
  end
end
```

## Configuration

By default Boxicon will compile all the 1500+ icons, which can take a while and will make you runtime
unnecessarily bloated. To fix this, you can specify the icons you want or an entire category.

This are some possible configurations:

Two regular icons, all the logos and none of the solid ones.
```elixir
config :surface_boxicon,
  icons: [
    regular: ["calendar", "chvron-down"],
    logos: :all,
    solid: nil
  ]
```

Just the icons you need (recommended)
```elixir
config :surface_boxicon,
  icons: [
    regular: ["calendar", "chvron-down"],
    solid: ["hand", "file-md"],
    logos: ["docker"]
  ]
```

Compile all the icons (default config)
```elixir
config :surface_boxicon,
  icons: :all
```

For the complete list of available icons visit the [boxicons wesite](https://boxicons.com).

## Installation

Add boxicons to your dependencies in your `mix.exs` file

```elixir
def deps do
  [
    {:surface_boxicon, "~> 0.4.0"}
  ]
end
```

Then run 

```
mix deps.get
```

and that's pretty much it.
