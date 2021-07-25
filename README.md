# Boxicon

Boxicon is [surface](https://github.com/surface-ui/surface) component library that wraps the amazing [boxicons](https://boxicons.com) library.

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

## Naming convention

If you already know the name of the icon you want, infering the module's name should be no problem. 

Here are a few examples:

Name | Category | Module Name
---| --- | ---
docker | logos | LogosDocker
copy-alt | regular | RegularCopyAlt
quote-single | Solid | SolidQuoteSingle

## Installation

Add boxicons to your dependencies in your `mix.exs` file

```elixir
def deps do
  [
    {:surface_boxicon, "~> 0.2.0"}
  ]
end
```

Then run 

```
mix deps.get
```

and that's pretty much it.
