defmodule Boxicon.Solid.AlarmSnooze do
  @moduledoc "solid/alarm-snooze"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="m17.284 3.707 1.412-1.416 3.01 3-1.413 1.417zm-10.586 0-2.99 2.999L2.29 5.294l2.99-3zM12 4c-4.878 0-9 4.121-9 9s4.122 9 9 9c4.879 0 9-4.121 9-9s-4.121-9-9-9zm4 13H8.131l4-6H8V9h7.868l-1.035 1.554-.001.001L11.869 15H16v2z"/></svg>
    """
  end
end
