defmodule Boxicon.Solid.BellOff do
  @moduledoc "solid/bell-off"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M20.345 18.931A.993.993 0 0 0 21 18v-1a.996.996 0 0 0-.293-.707L19 14.586V10c0-3.217-2.185-5.927-5.145-6.742C13.562 2.52 12.846 2 12 2s-1.562.52-1.855 1.258c-1.323.364-2.463 1.128-3.346 2.127L3.707 2.293 2.293 3.707l18 18 1.414-1.414-1.362-1.362zM12 22a2.98 2.98 0 0 0 2.818-2H9.182A2.98 2.98 0 0 0 12 22zM5 10v4.586l-1.707 1.707A.996.996 0 0 0 3 17v1a1 1 0 0 0 1 1h10.879L5.068 9.189C5.037 9.457 5 9.724 5 10z"/></svg>
    """
  end
end
