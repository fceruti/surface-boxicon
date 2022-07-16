# Boxicon

Boxicon is [surface](https://github.com/surface-ui/surface) component library that wraps the amazing [boxicons](https://boxicons.com) library.

[![Hex pm](http://img.shields.io/hexpm/v/surface_boxicon.svg?style=flat)](https://hex.pm/packages/surface_boxicon) [![build](https://github.com/fceruti/surface-boxicon/actions/workflows/build.yml/badge.svg)](https://github.com/fceruti/surface-boxicon/actions/workflows/build.yml)

## Usage

```elixir
defmodule MyComponent do
  use Surface.Component

  @impl true
  def render(assigns) do
    ~F"""
      <Boxicon.Solid.Calendar
        class="w-8 h-8"
      />
    """
  end
end
```

## Configuration

### Default values

Default values let you write your boxicons using less code.

```elixir
config :surface_boxicon,
  default_type: "regular",
  default_size: 24,
  default_class: "icon"
```

### Icons

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

## Re-generate icon modules from SVG files
Put SVGs in `priv/2.0.9` (or adjust the version as necessary in `Boxicon.Source`) and then run `Boxicon.Generate.generate()` 

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
