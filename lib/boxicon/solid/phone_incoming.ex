defmodule Boxicon.Solid.PhoneIncoming do
  @moduledoc "solid/phone-incoming"
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
    <svg xmlns="http://www.w3.org/2000/svg" class={@class} fill={@fill} stroke={@stroke} width={@size} height={@size} viewBox="0 0 24 24" aria-hidden="true"><path d="M15.793 6.793 13 4v7h7l-2.793-2.793 4.5-4.5-1.414-1.414z"/><path d="M16.422 13.443a1.001 1.001 0 0 0-1.391.043l-2.392 2.461c-.576-.11-1.734-.471-2.926-1.66-1.192-1.193-1.553-2.354-1.66-2.926l2.459-2.394a1 1 0 0 0 .043-1.391L6.86 3.513a1 1 0 0 0-1.391-.087l-2.17 1.861a1.001 1.001 0 0 0-.291.649c-.015.25-.301 6.172 4.291 10.766C11.305 20.707 16.324 21 17.705 21c.203 0 .326-.006.359-.008a.99.99 0 0 0 .648-.291l1.861-2.171a1.001 1.001 0 0 0-.086-1.391l-4.065-3.696z"/></svg>
    """
  end
end
