defmodule Boxicon.Solid.DropletHalf do
  @moduledoc "solid/droplet-half"
  use Surface.Component
  import Boxicon

  @doc "css class"
  prop class, :css_class, default: "w-5 h-5"

  @doc "svg fill (default: currentColor)"
  prop fill, :string, default: "currentColor"

  @doc "svg stroke (default: )"
  prop stroke, :string, default: ""

  @doc "Width & height of the icon (default: 100%)"
  prop size, :string, default: "100%"

  def render(assigns) do
    ~F"""
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M12.578 2.184a1.004 1.004 0 0 0-1.156 0C11.119 2.398 4 7.513 4 13.75 4 18.53 7.364 22 12 22s8-3.468 8-8.246c0-6.241-7.119-11.356-7.422-11.57zM6 13.75c0-4.283 4.395-8.201 6-9.49V20c-3.533 0-6-2.57-6-6.25z"/></svg>
    """
  end
end
