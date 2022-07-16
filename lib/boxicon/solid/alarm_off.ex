defmodule Boxicon.Solid.AlarmOff do
  @moduledoc "solid/alarm-off"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="m20.292 6.708-3.01-3 1.412-1.417 3.01 3zm1.415 13.585-2.287-2.288C20.409 16.563 21 14.837 21 13c0-4.878-4.121-9-9-9-1.838 0-3.563.59-5.006 1.581L5.91 4.496l.788-.79-1.416-1.412-.786.788-.789-.789-1.414 1.414 18 18 1.414-1.414zM17 14h-1.586l-2-2H17v2zm-6-6h2v3.586l-2-2V8zm1 14c1.658 0 3.224-.485 4.574-1.305L4.305 8.426A8.794 8.794 0 0 0 3 13c0 4.878 4.122 9 9 9z"/></svg>
    """
  end
end