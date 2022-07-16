defmodule Boxicon.Regular.LoaderCircle do
  @moduledoc "regular/loader-circle"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><circle cx="12" cy="20" r="2"/><circle cx="12" cy="4" r="2"/><circle cx="6.343" cy="17.657" r="2"/><circle cx="17.657" cy="6.343" r="2"/><circle cx="4" cy="12" r="2.001"/><circle cx="20" cy="12" r="2"/><circle cx="6.343" cy="6.344" r="2"/><circle cx="17.657" cy="17.658" r="2"/></svg>
    """
  end
end
