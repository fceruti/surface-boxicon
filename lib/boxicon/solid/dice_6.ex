defmodule Boxicon.Solid.Dice6 do
  @moduledoc "solid/dice-6"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M19 3H5c-1.103 0-2 .897-2 2v14c0 1.103.897 2 2 2h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2zM8 17.5a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 8 17.5zm0-4a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 8 13.5zm0-4a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 8 9.5zm8 8a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 16 17.5zm0-4a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 16 13.5zm0-4a1.5 1.5 0 1 1 .001-3.001A1.5 1.5 0 0 1 16 9.5z"/></svg>
    """
  end
end
