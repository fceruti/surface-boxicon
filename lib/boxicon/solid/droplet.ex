defmodule Boxicon.Solid.Droplet do
  @moduledoc "solid/droplet"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><defs><path id="a" d="M4 2.24h42V22H4z"/></defs><clipPath id="b"><use xlink:href="#a" overflow="visible"/></clipPath><path clip-path="url(#b)" d="M12.602 2.447a.989.989 0 0 0-1.21-.001C9.51 3.879 3.973 8.547 4 14c0 4.411 3.589 8 8 8 4.412 0 8-3.589 8-7.995.027-5.365-5.533-10.116-7.398-11.558"/></svg>
    """
  end
end
