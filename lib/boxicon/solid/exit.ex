defmodule Boxicon.Solid.Exit do
  @moduledoc "solid/exit"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M5.002 21h14c1.103 0 2-.897 2-2V5c0-1.103-.897-2-2-2h-14c-1.103 0-2 .897-2 2v6.001H10V7l6 5-6 5v-3.999H3.002V19c0 1.103.897 2 2 2z"/></svg>
    """
  end
end
